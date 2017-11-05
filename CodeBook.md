# Description of the Tidy Data Set: ```tidydata.txt```
This code book describes the data, the variables, and the work that is performed to clean up the data

## The data
* There are 180 rows and 68 columns in the data set
* Each row represents the average per subject per activity of a variable
* First two columns are activity and subject. Remaining 66 columns are the selected measurements as described below.

## The work performed for cleaning the data
* Some variables were not unique. Those were made as unique via the ```make.names``` function
* In the variable names: The ```.```, ```-``` and ```,``` are subsituted with the ```_``` by using the ```gsub``` function 
* Activity lables are replaced with descriptive activity types using a ```for``` loop through all rows of the ```activity``` column 

## The variables
* The variables are a set of masurements consisting of either a mean or a standard deviation measurement selected from the main data set of 561 variables:
* activity  
* subject   
* tBodyAcc_mean_X   
* tBodyAcc_mean_Y   
* tBodyAcc_mean_Z   
* tBodyAcc_std_X   
* tBodyAcc_std_Y   
* tBodyAcc_std_Z   
* tGravityAcc_mean_X   
* tGravityAcc_mean_Y   
* tGravityAcc_mean_Z   
* tGravityAcc_std_X   
* tGravityAcc_std_Y   
* tGravityAcc_std_Z   
* tBodyAccJerk_mean_X   
* tBodyAccJerk_mean_Y   
* tBodyAccJerk_mean_Z   
* tBodyAccJerk_std_X
* tBodyAccJerk_std_Y
* tBodyAccJerk_std_Z
* tBodyGyro_mean_X
* tBodyGyro_mean_Y
* tBodyGyro_mean_Z
* tBodyGyro_std_X
* tBodyGyro_std_Y
* tBodyGyro_std_Z
* tBodyGyroJerk_mean_X
* tBodyGyroJerk_mean_Y
* tBodyGyroJerk_mean_Z
* tBodyGyroJerk_std_X
* tBodyGyroJerk_std_Y
* tBodyGyroJerk_std_Z
* tBodyAccMag_mean
* tBodyAccMag_std
* tGravityAccMag_mean
* tGravityAccMag_std
* tBodyAccJerkMag_mean
* tBodyAccJerkMag_std
* tBodyGyroMag_mean
* tBodyGyroMag_std
* tBodyGyroJerkMag_mean
* tBodyGyroJerkMag_std
* fBodyAcc_mean_X
* fBodyAcc_mean_Y
* fBodyAcc_mean_Z
* fBodyAcc_std_X
* fBodyAcc_std_Y
* fBodyAcc_std_Z
* fBodyAccJerk_mean_X
* fBodyAccJerk_mean_Y
* fBodyAccJerk_mean_Z
* fBodyAccJerk_std_X
* fBodyAccJerk_std_Y
* fBodyAccJerk_std_Z
* fBodyGyro_mean_X
* fBodyGyro_mean_Y
* fBodyGyro_mean_Z
* fBodyGyro_std_X
* fBodyGyro_std_Y
* fBodyGyro_std_Z
* fBodyAccMag_mean
* fBodyAccMag_std
* fBodyBodyAccJerkMag_mean
* fBodyBodyAccJerkMag_std
* fBodyBodyGyroMag_mean
* fBodyBodyGyroMag_std
* fBodyBodyGyroJerkMag_mean
* fBodyBodyGyroJerkMag_std


