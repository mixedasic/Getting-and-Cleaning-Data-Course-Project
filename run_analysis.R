#
#  A full description is available at the site where the data was obtained: 
#    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#
# Here are the data for the project:
#  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
#  You should create one R script called run_analysis.R that does the following. 
#   1 - Merges the training and the test sets to create one data set.
#   2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
#   3 - Uses descriptive activity names to name the activities in the data set
#   4 - Appropriately labels the data set with descriptive variable names. 
#   5 - Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

library(reshape2)

# Feature data (561 columns)
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
# Subject's performed activity 
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
# Volunteers number
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
# Activity label 
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
# Feature name mapped from 1 to 561
features <- read.table("./UCI HAR Dataset/features.txt")

#
#   1 - Merge the training and the test sets to create one data set.
#   3 - Use descriptive activity names to name the activities in the data set
#   4 - Appropriately labels the data set with descriptive variable names. 
#
x_data <- rbind(X_train, X_test)
XcolNames <- gsub("[[:punct:]]","", features$V2, ignore.case = FALSE, perl = FALSE)
colnames(x_data) <- XcolNames

y_data <- rbind(y_train, y_test)
colnames(y_data) <- "Activity"
y_data$Activity <- as.character(activity_labels$V2)[y_data$Activity]

subject_data <- rbind(subject_train, subject_test)
colnames(subject_data) <- "Subject"

all_data <- cbind(subject_data, y_data, x_data)
write.table(all_data, file="all_data.txt", sep = " ",row.name=FALSE)

#
#   2 - Extract only the measurements on the mean and standard deviation for each measurement. 
#
new_data <- all_data[, grep("mean|std|Subject|Activity", names(all_data))]

#
#   5 - Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
#
melted = melt(new_data, id.vars = c("Subject", "Activity"))
means = dcast(melted , Subject + Activity ~ variable,mean)

write.table(means, file="tidy_data.txt", sep = " ",row.name=FALSE)

# Check that the file read in is the same as the one written.
means_in <- read.table(file="tidy_data.txt", sep = " ")
