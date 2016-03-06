# Getting_and_cleaning_data
Coursera project for the Getting and Cleaning Data Coursera course. 

run_analysis.R, does the following:
1.Read data from working directory: 3 train, 3 test datasets.
2. merge test data with  train set using cbind() function
3. keeps columns that contain mean or standard deviation variables
4. Reads activity, subject data and merges them to existed data set
5. Creates a tidy dataset that consists of the average value of each variable for unique subject|activity pair.
Output is shown in the file final_mean.txt.
