Source data: UCI HAR Dataset


As the result of first 4 steps we get merged data sets from 3 train and 3 test sets, that match feature criteria.

79 variables from initial data set (561 variables) were selected  using  grep("-mean()|-std()", features$name) function.
[ features name samples: fBodyAcc-mean()-Z, fBodyGyro-std()-Y, ... ]. Column names set up  appropriate after cleaning - dublicates such as "BodyBody" replaced with "Body" , "()-" part removed from variable names. 



The result of 5th step is aggregated data - for each unique Activity|Subject pair mean value is calculated; 
    where:
    
          subject - subject ID
          
          activity - performed activity by subject: Example: WALKING, SITTING, LAYING, etc
