##[UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), The Raw Data:

The raw data can be found at:  [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). File descriptions and field label descriptions are also in this download, in the `README.txt` and `features_info.txt` files.

----------
##`all_data.txt`, Column Labels in the Combined raw data set. 
The `run_analysis.R` script produces a combined raw data set named "`all_data.txt`". The column labels are "Subject", "Activity", and then the 561 fields defined in the `features.txt` file.  The column labels have had all special characters stripped from the column label. Definitions are contained in the `README.txt` and `features_info.txt` files. This file is about 66MB in size.

##`tidy_data.txt`, Column Fields in the Tidy data set. 
The `run_analysis.R` script produces a Tidy data set named "`tidy_data.txt`" with the means and standard deviations of a subset of the raw data. The names containing 'mean' are averages and 'std' are standard deviations of the original raw data set. The original raw field names (from `features.txt`) have had all special characters stripped from the label. The data labels are defined in the `features_info.txt` file at the top of the downloaded raw data set. This file is about 0.3MB is size.

1. **Subject** - The number (1-30) assigned to the study participant.
1. **Activity** - The particular activity the participant was executing for the data record.
1. tBodyAccmeanX - See `features_info.txt` for rest of column label descriptions.
1. tBodyAccmeanY
1. tBodyAccmeanZ
1. tBodyAccstdX
1. tBodyAccstdY
1. tBodyAccstdZ
1. tGravityAccmeanX
1. tGravityAccmeanY
1. tGravityAccmeanZ
1. tGravityAccstdX
1. tGravityAccstdY
1. tGravityAccstdZ
1. tBodyAccJerkmeanX
1. tBodyAccJerkmeanY
1. tBodyAccJerkmeanZ
1. tBodyAccJerkstdX
1. tBodyAccJerkstdY
1. tBodyAccJerkstdZ
1. tBodyGyromeanX
1. tBodyGyromeanY
1. tBodyGyromeanZ
1. tBodyGyrostdX
1. tBodyGyrostdY
1. tBodyGyrostdZ
1. tBodyGyroJerkmeanX
1. tBodyGyroJerkmeanY
1. tBodyGyroJerkmeanZ
1. tBodyGyroJerkstdX
1. tBodyGyroJerkstdY
1. tBodyGyroJerkstdZ
1. tBodyAccMagmean
1. tBodyAccMagstd
1. tGravityAccMagmean
1. tGravityAccMagstd
1. tBodyAccJerkMagmean
1. tBodyAccJerkMagstd
1. tBodyGyroMagmean
1. tBodyGyroMagstd
1. tBodyGyroJerkMagmean
1. tBodyGyroJerkMagstd
1. fBodyAccmeanX
1. fBodyAccmeanY
1. fBodyAccmeanZ
1. fBodyAccstdX
1. fBodyAccstdY
1. fBodyAccstdZ
1. fBodyAccmeanFreqX
1. fBodyAccmeanFreqY
1. fBodyAccmeanFreqZ
1. fBodyAccJerkmeanX
1. fBodyAccJerkmeanY
1. fBodyAccJerkmeanZ
1. fBodyAccJerkstdX
1. fBodyAccJerkstdY
1. fBodyAccJerkstdZ
1. fBodyAccJerkmeanFreqX
1. fBodyAccJerkmeanFreqY
1. fBodyAccJerkmeanFreqZ
1. fBodyGyromeanX
1. fBodyGyromeanY
1. fBodyGyromeanZ
1. fBodyGyrostdX
1. fBodyGyrostdY
1. fBodyGyrostdZ
1. fBodyGyromeanFreqX
1. fBodyGyromeanFreqY
1. fBodyGyromeanFreqZ
1. fBodyAccMagmean
1. fBodyAccMagstd
1. fBodyAccMagmeanFreq
1. fBodyBodyAccJerkMagmean
1. fBodyBodyAccJerkMagstd
1. fBodyBodyAccJerkMagmeanFreq
1. fBodyBodyGyroMagmean
1. fBodyBodyGyroMagstd
1. fBodyBodyGyroMagmeanFreq
1. fBodyBodyGyroJerkMagmean
1. fBodyBodyGyroJerkMagstd
1. fBodyBodyGyroJerkMagmeanFreq

----------
