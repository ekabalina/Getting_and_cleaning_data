#read train data sets
setwd("/home/elina/data/UCI HAR Dataset/train")
x_train <- read.table("./X_train.txt", header = FALSE) 
y_train <- read.table("./y_train.txt", header = FALSE)
s_train <- read.table("./subject_train.txt", header = FALSE) 
#read test data sets
setwd("/home/elina/data/UCI HAR Dataset/test")
x_test <- read.table("./X_test.txt", header = FALSE) 
y_test<- read.table("./y_test.txt", header = FALSE) 
s_test <- read.table("./subject_test.txt", header = FALSE)
#merge train and test sets
x_merge<- rbind(x_train, x_test) 
y_merge <- rbind(y_train, y_test) 
names(y_merge)<-"Activity"
s_merge <- rbind(s_train, s_test)
names(s_merge) <- "Subject"

#1.Merges the training and the test sets to create one data set
data_set <- cbind(y_merge, s_merge, x_merge)

#2.Extracts only the measurements on the mean and standard deviation for each measurement.
setwd("/home/elina/data/UCI HAR Dataset")
features <- read.table("./features.txt")
head(features)
names(features) <- c('id', 'name')
f_index <- grep("-mean()|-std()", features$name) 
data_set <- data_set[, f_index]

#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names.

activity_labels <- read.table("./activity_labels.txt")
names(activity_labels ) <- c('id', 'name')
data_set[, 1] = activity_labels[data_set[, 1], 2] 

#From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
melted<-melt(data_set, id = c("Subject", "Activity"))
final_mean<- dcast(melted, Subject+Activity ~ variable,mean)
