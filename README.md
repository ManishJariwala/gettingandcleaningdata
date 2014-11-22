Getting and Cleaning Data Course at John Hopkins
======================

Overall Summary
  Programming assignment for the Getting and Cleaning Data is to create R code that would do following: download file from provided URL, tidy data, and calculate mean for dimensions that has "mean and standard deviation" values.  Final summarized result will be show mean for all selected dimension by activity and subject.  The attached code run_Analysis.R downloads the final result in MJ_tidy_data.txt.

Raw Data Information
  The source data is broken into two groups (test and train) and three major categories -observation, activity and subject. 30 subjects were divided into test (30%) and train (70%) group.  Each subject performed six activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).  Following files are provides
 
 X_train.txt -  Observations for subjects that were grouped in train. It has list of 561 observation across all six activity.
 y_train.txt -  contains activity data related to the observations data in x_train.txt
 subject_train.txt – contains subject data related to train data

 X_test.txt - Observations for subjects that were grouped in train. It has list of 561 observation across all six activity.
 y_test.txt – contains activity data related to the observations to data in y_train.txt
subject_test.txt – contact subject data related to test data
  

features.txt -  names of actual observations in x_train and x_test.  It is added as column heads.

Activity_labels.txt – Lookup information to convert data in y_train and y_test related to activity.

Programming Approach

Code first downloads the data from URL provided, unzip the data, reads the files.
a)X_train and x_test data is combined by rows, column headers are added from features files. Only columns that have mean and std are extracted. 
b)Descriptive columns are assigned. 
b) Y_train and y_test data is combined by rows.  Actual values are derived by looking into activity_labels tables. It is appended as column into result from a) above.
c) subject_train and subject_test data are then combined by rows, and then appended to result in b.
d) Mean is calculated for all dimension after they are grouped by activity, subject
Finally, code outputs the final results.

Final Result Set

The final result set provides mean for each selected dimension grouped by activity and subject. 



	
	




  
  
  


	
	




  
  
  
