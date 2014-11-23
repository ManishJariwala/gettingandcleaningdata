Getting and Cleaning Data Course at John Hopkins
======================

Overall Summary
  Programming assignment for the Getting and Cleaning Data is to create R code that would do following: download file from provided URL, tidy the data as per guidelines, and calculate mean for dimensions that have "mean and standard deviation" values.  Final summarized result in a wide format will show mean for all selected dimension grouped by activity and subject.  The attached code run_Analysis.R downloads the final result in MJ_tidy_data.txt.

Raw Data Information
  The source data is broken into two groups (test and train) and three major categories -observation, activity and subject. 30 subjects were divided into test (30%) and train (70%) group.  Each subject performed six activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).  Following files are provides
 
 X_train.txt -  features for subjects that were grouped in train. It has list of 561 observation across all six activity.
 y_train.txt -  contains activity data related to the features data in x_train.txt
 subject_train.txt – contains subject data related to train data

 X_test.txt - features for subjects that were grouped in train. It has list of 561 observation across all six activity.
 y_test.txt – contains activity data related to the features to data in y_train.txt
subject_test.txt – contact subject data related to test data
  

features.txt -  names of actual features in x_train and x_test.  It is added as column heads.

Activity_labels.txt – Lookup information to convert data in y_train and y_test related to activity.

Programming Approach

Code first downloads the data from URL provided, unzip the data, reads the files.
a)X_train and x_test data is combined by rows, column headers are added from features files. Only columns that have mean and std are extracted. Descriptive columns are assigned. (Steps 1 to Step 6 in code)
b) subject_train and subject_test data are then combined by rows, and then appended to result in a. (Step 7 and Step 8
c) Clean up column names in data set to give meaningful names (Step 9 in code)
d) Y_train and y_test data is combined by rows.  Actual values are derived by looking into activity_labels tables. It is appended as column into result from a) above. (Steps 10 to Steps 14 in code)
e) Mean is calculated for all dimension after they are grouped by activity, subject (Step 15 in code)
Finally, code outputs the final results. (step 16 in code)

Final Result Set

The final result set provides mean for each selected dimension grouped by activity and subject. This in wide format



	
	




  
  
  


	
	




  
  
  
