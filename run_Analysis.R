## Date:11/22/2004
## Author: MJ
## Programming Assignment: Getting and Cleaning data course
## Purpose: Download data gathered from Samsung Galaxy S Phone, make it tidy, calculate mean by activity, and subject
## Overall Approach: Put xdata from test and train together, then add acitivity and subject data, calculate mean. 
## Reference: codebook and readme

#Step 1 -  Read x_train.txt data into xtrain variable.
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",file)
unzip(file)

xtrain <- read.table("UCI HAR Dataset/train/x_train.txt")
features <- read.table("UCI HAR Dataset/features.txt")

#step 2 <- assign column headers to xtrain from features file
colnames(xtrain) <- features[,2]

#step 3 <- read x_test.txt into xtest variable.
xtest <- read.table("UCI HAR Dataset/test/x_test.txt")

#Step 4 - Assing column heard to xtest from features file
colnames(xtest) <- features[,2]

#step 5 - combine xtrain and xtest data. This will create a full dataset of observation of 10,299 row and 561 colum
xdata <- rbind(xtrain, xtest)

#step 6 - xdata_mean stores all those columns that have word mean() in the column names. Repeate the same for std(). And then combine the columns
xdata_mean <- xdata[,grep("mean()",names(xdata),fixed=TRUE)]
xdata_std <- xdata[,grep("std()",names(xdata),fixed=TRUE)]
xdata <- cbind(xdata_mean,xdata_std)

#step 7 - Read subject train data and test data combine them into single variable using row bind. 

subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjectdata <- rbind(subjecttrain, subjecttest)




#step 8 - add subject column to the xdata
colnames(subjectdata) <- "subjectid"
xdata <- cbind(subjectdata,xdata)

# step 9 - clean up the column headers.  
colnames(xdata) <- gsub(pattern="\\(|\\)",replacement="", x=names(xdata))
colnames(xdata) <- gsub(pattern="tBody",replacement="time-body-", x=names(xdata))
colnames(xdata) <- gsub(pattern="fBody",replacement="fast-fourier-transform-body-", x=names(xdata))
colnames(xdata) <- gsub(pattern="tGravityAcc-",replacement="time-gravity-ACC-", x=names(xdata))
colnames(xdata) <- gsub(pattern="tGravityAccMag-",replacement="time-gravity-ACC-mag-", x=names(xdata))
colnames(xdata) <- gsub(pattern="-",replacement="_", x=names(xdata))



#step 10 Combine Activity related data from train and test
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
ydata <- rbind(ytrain, ytest)



#step 11 - read the activity labels (look up) 
activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt")


#Step  11 - Update the activity data with actual values from activity labels 
ydata <- data.frame(activitylabels$V2[match(ydata$V1,activitylabels$V1)])
colnames(ydata) = "activity"

#step 12 - add activity column to the main data
xdata <- cbind(ydata,xdata)

#step 13 - convert data frame into table.
xdata1 <- data.table(xdata)

#step 14 - Calculate mean of each dimension by grouping Activity and Subject
tidy_data <- xdata1[,lapply(.SD,mean),by=list(activity,subjectid)]

#step 15 - write data into a text file.
write.table(tidy_data,"MJ_tidy_data.txt",row.name=FALSE)

print ("Please find results in MJ_tidy_data.txt in your working directory. You can read back using into your local variable by read.table function")







