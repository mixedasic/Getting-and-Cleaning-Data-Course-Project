Getting-and-Cleaning-Data-Course-Project
========================================

Getting and Cleaning Data Course Project Repository for the Coursera Data Science class, by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD.

The Peer Assessment assignment is to collect, work with, and clean a data set. The assignment goal is to prepare tidy data that can be used for later analysis. This repository contains the analysis code in R which can be run on the "Human Activity Recognition Using Smartphones Data Set" from the UCI Machine Learning Repository at: [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


The tasks were to:

1. Download the required data.
2. Write an R script (`run_analysis.R`) to process the raw data into a tidy data set.
3. Upload to Git with supporting `README.md` and `CodeBook.md` documentation.

# Download the required data.

Download the zipped data set from: [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Unzip the file in the R project directory that the `run_analysis.R` script will run in. 
The working directory will contain `run_analysis.R` and the unzipped data directory, `'UCI HAR Dataset'`.

# `run_analyis.R` script
The `run_analysis.R` script does the following: 

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names.
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 


This script will create two new tidy data sets:

`all_data.txt` : combines training and test data sets (together with subject and activity data).

`tidy_data.txt`: shows a table with the means, grouped by subject and label.

# Git Repository
The `run_analysis.R`, `README.md` and `CodeBook.md` are uploaded to this Git repository and are available for inspection and use.

1. README.md -- This file describing the general overview of the project and files.
2. CodeBook.md -- The decription of the procedure and variables in the run_analysis.R code.
3. run_analysis.R -- The R program which creates a tidy data set from the raw UCI data.
 
# File combination

![Descriptive Slide](https://github.com/mixedasic/Getting-and-Cleaning-Data-Course-Project/blob/master/Slide2.png)

# Detail Explanation
A more detailed explanation of the experiments is:

> "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."


#The raw data details:

The raw dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set inputs.

- 'train/y_train.txt': Training outcome.

- 'test/X_test.txt': Test set inputs.

- 'test/y_test.txt': Test outcome.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

**This project did not require the "Inertial Signals" data.**
