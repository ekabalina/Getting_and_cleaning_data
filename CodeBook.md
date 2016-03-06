Source data: UCI HAR Dataset


As the result of first 4 steps we get merged data sets from 3 train and 3 test sets, that match feture criteria.
To estimate mean and stddev, 79 observations from initial data set (10299 obs.) were selected  using  grep("-mean()|-std()", features$name) function.
[ features name samples: fBodyAcc-mean()-Z, fBodyGyro-std()-Y, ... ]

The result of 5th step is aggregated data - for each unique Activity|Subject pair mean value is calculated; 
    where:
          subject - subject number 
          activity - performed activity by subject: Example: WALKING, SITTING, LAYING, etc
