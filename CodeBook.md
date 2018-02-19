# Codebook for Getting and Cleaning Data

The data was take from the "Human Activity Recognition Using Smartphones Data Set"
Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# Transformations:

Training and the test sets were merged to create one data set.

Only measurements on the mean and standard deviation for each measurement were extracted.

Descriptive activity names were added to name the activities in the data set

Appropriate labels were added to the data set with descriptive variable names.

From this data set as second, independent tidy data set with the average of each variable for each activity and each subject was created.


# Variables

The data is grouped by activity and subject. The mean of all column with "mean" or "std" in the name was calculated.  

Data for the following activities is available:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

The following variables are given in the output data set. Herein X, Y and Z are stand for the direction in which the data was measured. 

* TimeBodyAcc-mean-X 
* TimeBodyAcc-mean-Y 
* TimeBodyAcc-mean-Z 
* TimeBodyAcc-std-X 
* TimeBodyAcc-std-Y 
* TimeBodyAcc-std-Z 
* TimeGravityAcc-mean-X 
* TimeGravityAcc-mean-Y 
* TimeGravityAcc-mean-Z 
* TimeGravityAcc-std-X 
* TimeGravityAcc-std-Y 
* TimeGravityAcc-std-Z 
* TimeBodyAccJerk-mean-X 
* TimeBodyAccJerk-mean-Y 
* TimeBodyAccJerk-mean-Z 
* TimeBodyAccJerk-std-X 
* TimeBodyAccJerk-std-Y 
* TimeBodyAccJerk-std-Z 
* TimeBodyGyro-mean-X 
* TimeBodyGyro-mean-Y 
* TimeBodyGyro-mean-Z 
* TimeBodyGyro-std-X 
* TimeBodyGyro-std-Y 
* TimeBodyGyro-std-Z 
* TimeBodyGyroJerk-mean-X 
* TimeBodyGyroJerk-mean-Y 
* TimeBodyGyroJerk-mean-Z 
* TimeBodyGyroJerk-std-X 
* TimeBodyGyroJerk-std-Y 
* TimeBodyGyroJerk-std-Z 
* TimeBodyAccMag-mean 
* TimeBodyAccMag-std 
* TimeGravityAccMag-mean 
* TimeGravityAccMag-std 
* TimeBodyAccJerkMag-mean 
* TimeBodyAccJerkMag-std 
* TimeBodyGyroMag-mean 
* TimeBodyGyroMag-std 
* TimeBodyGyroJerkMag-mean 
* TimeBodyGyroJerkMag-std 
* FrequencyBodyAcc-mean-X 
* FrequencyBodyAcc-mean-Y 
* FrequencyBodyAcc-mean-Z 
* FrequencyBodyAcc-std-X 
* FrequencyBodyAcc-std-Y 
* FrequencyBodyAcc-std-Z 
* FrequencyBodyAcc-meanFreq-X 
* FrequencyBodyAcc-meanFreq-Y 
* FrequencyBodyAcc-meanFreq-Z 
* FrequencyBodyAccJerk-mean-X 
* FrequencyBodyAccJerk-mean-Y 
* FrequencyBodyAccJerk-mean-Z 
* FrequencyBodyAccJerk-std-X 
* FrequencyBodyAccJerk-std-Y 
* FrequencyBodyAccJerk-std-Z 
* FrequencyBodyAccJerk-meanFreq-X 
* FrequencyBodyAccJerk-meanFreq-Y 
* FrequencyBodyAccJerk-meanFreq-Z 
* FrequencyBodyGyro-mean-X 
* FrequencyBodyGyro-mean-Y 
* FrequencyBodyGyro-mean-Z 
* FrequencyBodyGyro-std-X 
* FrequencyBodyGyro-std-Y 
* FrequencyBodyGyro-std-Z 
* FrequencyBodyGyro-meanFreq-X 
* FrequencyBodyGyro-meanFreq-Y 
* FrequencyBodyGyro-meanFreq-Z 
* FrequencyBodyAccMag-mean 
* FrequencyBodyAccMag-std 
* FrequencyBodyAccMag-meanFreq 
* FrequencyBodyBodyAccJerkMag-mean 
* FrequencyBodyBodyAccJerkMag-std 
* FrequencyBodyBodyAccJerkMag-meanFreq 
* FrequencyBodyBodyGyroMag-mean 
* FrequencyBodyBodyGyroMag-std 
* FrequencyBodyBodyGyroMag-meanFreq 
* FrequencyBodyBodyGyroJerkMag-mean 
* FrequencyBodyBodyGyroJerkMag-std
* FrequencyBodyBodyGyroJerkMag-meanFreq
