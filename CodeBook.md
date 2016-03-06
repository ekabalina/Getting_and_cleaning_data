Source data: UCI HAR Dataset


Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

data and additional information can be found  here: https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

As the result of first 4 steps we got merged test and train data sets; indexes of entries that match feature criteria - variables are mean or stddev related -  were arranged in vector; names of the variables and  corresponding  observations were subseted:

79 variables from initial data set (561 variables) were selected  using  grep("-mean()|-std()", features$name) function.
[ features name samples: fBodyAcc-mean()-Z, fBodyGyro-std()-Y, ... ]. Column names set up  appropriate after cleaning - dublicates such as "BodyBody" replaced with "Body" , "()-" part removed from variable names. 



The result of 5th step is aggregated data - for each unique Activity|Subject pair mean value of each variable is calculated; 
    where:
    
          subject - subject ID
          
          activity - performed activity by subject

Output is shown in the file final_mean.txt.
