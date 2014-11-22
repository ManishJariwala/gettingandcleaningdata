
Below section is adapted form Reyes-Ortiz et al., at Smartlab based on 

Overall Experiment
==================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals time_Acc_XYZ and time_Gyro_XYZ. 
These time domain signals were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time_body_ACC_XYZ and time_gravity_ACC_XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time_body_AccJerk_XYZ and time_body_GyroJerk_XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (time_body_AccMag, time_body_AccMag, time_body_AccJerkMag, time_body_GyroMag, time_body_GyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fast_fourier_transform_body_Acc-XYZ, fast_fourier_transform_body_AccJerk-XYZ, fast_fourier_transform_body_BodyGyro-XYZ, fast_fourier_transform_body_AccJerkMag, fast_fourier_transform_body_GyroMag, fast_fourier_transform_body_GyroJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Each feature has mean and standard deviation. 

Activity provides information  about each of 30 subjects performing six activity - (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

Final results shows mean of each feature group by activity and subject. 

====================
"activity"
"subjectid"
"time_body_Acc_mean_X"
"time_body_Acc_mean_Y"
"time_body_Acc_mean_Z"
"time_gravity_ACC_mean_X"
"time_gravity_ACC_mean_Y"
"time_gravity_ACC_mean_Z"
"time_body_AccJerk_mean_X"
"time_body_AccJerk_mean_Y"
"time_body_AccJerk_mean_Z"
"time_body_Gyro_mean_X"
"time_body_Gyro_mean_Y"
"time_body_Gyro_mean_Z"
"time_body_GyroJerk_mean_X"
"time_body_GyroJerk_mean_Y"
"time_body_GyroJerk_mean_Z"
"time_body_AccMag_mean"
"time_gravity_ACC_mag_mean"
"time_body_AccJerkMag_mean"
"time_body_GyroMag_mean"
"time_body_GyroJerkMag_mean"
"fast_fourier_transform_body_Acc_mean_X"
"fast_fourier_transform_body_Acc_mean_Y"
"fast_fourier_transform_body_Acc_mean_Z"
"fast_fourier_transform_body_AccJerk_mean_X"
"fast_fourier_transform_body_AccJerk_mean_Y"
"fast_fourier_transform_body_AccJerk_mean_Z"
"fast_fourier_transform_body_Gyro_mean_X"
"fast_fourier_transform_body_Gyro_mean_Y"
"fast_fourier_transform_body_Gyro_mean_Z"
"fast_fourier_transform_body_AccMag_mean"
"fast_fourier_transform_body_BodyAccJerkMag_mean"
"fast_fourier_transform_body_BodyGyroMag_mean"
"fast_fourier_transform_body_BodyGyroJerkMag_mean"
"time_body_Acc_std_X"
"time_body_Acc_std_Y"
"time_body_Acc_std_Z"
"time_gravity_ACC_std_X"
"time_gravity_ACC_std_Y"
"time_gravity_ACC_std_Z"
"time_body_AccJerk_std_X"
"time_body_AccJerk_std_Y"
"time_body_AccJerk_std_Z"
"time_body_Gyro_std_X"
"time_body_Gyro_std_Y"
"time_body_Gyro_std_Z"
"time_body_GyroJerk_std_X"
"time_body_GyroJerk_std_Y"
"time_body_GyroJerk_std_Z"
"time_body_AccMag_std"
"time_gravity_ACC_mag_std"
"time_body_AccJerkMag_std"
"time_body_GyroMag_std"
"time_body_GyroJerkMag_std"
"fast_fourier_transform_body_Acc_std_X"
"fast_fourier_transform_body_Acc_std_Y"
"fast_fourier_transform_body_Acc_std_Z"
"fast_fourier_transform_body_AccJerk_std_X"
"fast_fourier_transform_body_AccJerk_std_Y"
"fast_fourier_transform_body_AccJerk_std_Z"
"fast_fourier_transform_body_Gyro_std_X"
"fast_fourier_transform_body_Gyro_std_Y"
"fast_fourier_transform_body_Gyro_std_Z"
"fast_fourier_transform_body_AccMag_std"
"fast_fourier_transform_body_BodyAccJerkMag_std"
"fast_fourier_transform_body_BodyGyroMag_std"
"fast_fourier_transform_body_BodyGyroJerkMag_std"

