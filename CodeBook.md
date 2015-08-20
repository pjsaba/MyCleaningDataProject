#CodeBook 

###Original Dataset

The original dataset is comprised by data gathered from accelerometers of a Samsung Galaxy S smartphone in a experiment designed by the following researchers:

1- Davide Anguita<br />
2- Alessandro Ghio<br />
3- Luca Oneto<br />
4- Xavier Parra<br /> 
5- Jorge L. Reyes-Ortiz

that describe the original dataset and experiment conveyed to collect them as quoted below:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."
 
Original Dataset can be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
To a full description of the original dataset, please refer to: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and read the README.txt file contained in the zip file.

###Variables

Running run_analysis.R script it is generated a tidy dataset according specified on course project instructions. 

Below it is shown its field list.

Note: I am not sure if definitions are completely correct (sorry but I am not an expert in accelerometers and gyroscopes)...

||Variable Name|Definition|Variable Type|Values supported|
|--------|------|--------------|----------|--------------|
|01| subject | Volunteer code | INTEGER | 1 to 30 |                  
|02| activity_id | Activity code | INTEGER | 1 to 6 |             
|03| activity_name | Activity name | CHARACTER | "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING" or "LAYING" |
|04| tBodyAcc_mean_X | Average of Time Domain Mean of 3-axial Body Linear Acceleration signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |     
|05| tBodyAcc_mean_Y | Average of Time Domain Mean of 3-axial Body Linear Acceleration signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |          
|06| tBodyAcc_mean_Z | Average of Time Domain Mean of 3-axial Body Linear Acceleration signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |          
|07| tBodyAcc_std_X | Average of Time Domain Standard Deviation of 3-axial Body Linear Acceleration signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |           
|08| tBodyAcc_std_Y | Average of Time Domain Standard Deviation of 3-axial Body Linear Acceleration signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |
|09| tBodyAcc_std_Z | Average of Time Domain Standard Deviation of 3-axial Body Linear Acceleration signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |           
|10| tGravityAcc_mean_X | Average of Time Domain Mean of 3-axial Gravity Acceleration signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |
|11| tGravityAcc_mean_Y | Average of Time Domain Mean of 3-axial Gravity Acceleration signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |        
|12| tGravityAcc_mean_Z | Average of Time Domain Mean of 3-axial Gravity Acceleration signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |       
|13| tGravityAcc_std_X | Average of Time Domain Standard Deviation of 3-axial Gravity Acceleration signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |         
|14| tGravityAcc_std_Y | Average of Time Domain Standard Deviation of 3-axial Gravity Acceleration signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |        
|15| tGravityAcc_std_Z | Average of Time Domain Standard Deviation of 3-axial Gravity Acceleration signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |        
|16| tBodyAccJerk_mean_X | Average of Time Domain Mean of 3-axial Body Linear Acceleration derived Jerk signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |      
|17| tBodyAccJerk_mean_Y | Average of Time Domain Mean of 3-axial Body Linear Acceleration derived Jerk signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |       
|18| tBodyAccJerk_mean_Z | Average of Time Domain Mean of 3-axial Body Linear Acceleration derived Jerk signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |       
|19| tBodyAccJerk_std_X | Average of Time Domain Standard Deviation of 3-axial Body Linear Acceleration derived Jerk signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |        
|20| tBodyAccJerk_std_Y | Average of Time Domain Standard Deviation of 3-axial Body Linear Acceleration derived Jerk signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |      
|21| tBodyAccJerk_std_Z | Average of Time Domain Standard Deviation of 3-axial Body Linear Acceleration derived Jerk signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |        
|22| tBodyGyro_mean_X | Average of Time Domain Mean of 3-axial Body Angular Velocity signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |         
|23| tBodyGyro_mean_Y | Average of Time Domain Mean of 3-axial Body Angular Velocity signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |          
|24| tBodyGyro_mean_Z | Average of Time Domain Mean of 3-axial Body Angular Velocity signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |        
|25| tBodyGyro_std_X | Average of Time Domain Standard Deviation of 3-axial Body Angular Velocity signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |       
|26| tBodyGyro_std_Y | Average of Time Domain Standard Deviation of 3-axial Body Angular Velocity signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |          
|27| tBodyGyro_std_Z | Average of Time Domain Standard Deviation of 3-axial Body Angular Velocity signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |          
|28| tBodyGyroJerk_mean_X | Average of Time Domain Mean of 3-axial Body Angular Velocity derived Jerk signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |
|29| tBodyGyroJerk_mean_Y | Average of Time Domain Mean of 3-axial Body Angular Velocity derived Jerk signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |      
|30| tBodyGyroJerk_mean_Z | Average of Time Domain Mean of 3-axial Body Angular Velocity derived Jerk signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |      
|31| tBodyGyroJerk_std_X | Average of Time Domain Standard Deviation of 3-axial Body Angular Velocity derived Jerk signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |       
|32| tBodyGyroJerk_std_Y | Average of Time Domain Standard Deviation of 3-axial Body Angular Velocity derived Jerk signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |      
|33| tBodyGyroJerk_std_Z | Average of Time Domain Standard Deviation of 3-axial Body Angular Velocity derived Jerk signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |       
|34| tBodyAccMag_mean | Average of Time Domain Mean of 3-axial Body Linear Acceleration calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |        
|35| tBodyAccMag_std | Average of Time Domain Standard Deviation of 3-axial Body Linear Acceleration calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |           
|36| tGravityAccMag_mean | Average of Time Domain Mean of 3-axial Gravity Acceleration calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |     
|37| tGravityAccMag_std | Average of Time Domain Standard Deviation of 3-axial Gravity Acceleration calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |        
|38| tBodyAccJerkMag_mean | Average of Time Domain Mean of 3-axial Body Linear Acceleration derived Jerk signal calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |       
|39| tBodyAccJerkMag_std | Average of Time Domain Standard Deviation of 3-axial Body Linear Acceleration derived Jerk signal calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |   
|40| tBodyGyroMag_mean | Average of Time Domain Mean of 3-axial Body Angular Velocity calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |          
|41| tBodyGyroMag_std | Average of Time Domain Standard Deviation of 3-axial Body Angular Velocity calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |         
|42| tBodyGyroJerkMag_mean | Average of Time Domain Mean of 3-axial Body Angular Velocity derived Jerk signal calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |     
|43| tBodyGyroJerkMag_std | Average of Time Domain Standard Deviation of 3-axial Body Angular Velocity derived Jerk signal calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |      
|44| fBodyAcc_mean_X | Average of Frequency Domain Mean of 3-axial Body Linear Acceleration signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |           
|45| fBodyAcc_mean_Y | Average of Frequency Domain Mean of 3-axial Body Linear Acceleration signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |           
|46| fBodyAcc_mean_Z | Average of Frequency Domain Mean of 3-axial Body Linear Acceleration signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |           
|47| fBodyAcc_std_X | Average of Frequency Domain Standard Deviation of 3-axial Body Linear Acceleration signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |            
|48| fBodyAcc_std_Y | Average of Frequency Domain Standard Deviation of 3-axial Body Linear Acceleration signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |           
|49| fBodyAcc_std_Z | Average of Frequency Domain Standard Deviation of 3-axial Body Linear Acceleration signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |            
|50| fBodyAccJerk_mean_X | Average of Frequency Domain Mean of 3-axial Body Linear Acceleration derived Jerk signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |       
|51| fBodyAccJerk_mean_Y | Average of Frequency Domain Mean of 3-axial Body Linear Acceleration derived Jerk signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |       
|52| fBodyAccJerk_mean_Z | Average of Frequency Domain Mean of 3-axial Body Linear Acceleration derived Jerk signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |      
|53| fBodyAccJerk_std_X | Average of Frequency Domain Standard Deviation of 3-axial Body Linear Acceleration derived Jerk signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |         
|54| fBodyAccJerk_std_Y | Average of Frequency Domain Standard Deviation of 3-axial Body Linear Acceleration derived Jerk signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |        
|55| fBodyAccJerk_std_Z | Average of Frequency Domain Standard Deviation of 3-axial Body Linear Acceleration derived Jerk signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |        
|56| fBodyGyro_mean_X | Average of Frequency Domain Mean of 3-axial Body Angular Velocity signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |         
|57| fBodyGyro_mean_Y | Average of Frequency Domain Mean of 3-axial Body Angular Velocity signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |          
|58| fBodyGyro_mean_Z | Average of Frequency Domain Mean of 3-axial Body Angular Velocity signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |          
|59| fBodyGyro_std_X | Average of Frequency Domain Standard Deviation of 3-axial Body Angular Velocity signal in the X direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |           
|60| fBodyGyro_std_Y | Average of Frequency Domain Standard Deviation of 3-axial Body Angular Velocity signal in the Y direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |          
|61| fBodyGyro_std_Z | Average of Frequency Domain Standard Deviation of 3-axial Body Angular Velocity signal in the Z direction | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |           
|62| fBodyAccMag_mean | Average of Frequency Domain Mean of 3-axial Body Linear Acceleration calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |          
|63| fBodyAccMag_std | Average of Frequency Domain Standard Deviation of 3-axial Body Linear Acceleration calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |            
|64| fBodyBodyAccJerkMag_mean | Average of Frequency Domain Mean of 3-axial Body Linear Acceleration derived Jerk signal calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 | 
|65| fBodyBodyAccJerkMag_std | Average of Frequency Domain Standard Deviation of 3-axial Body Linear Acceleration derived Jerk signal calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |   
|66| fBodyBodyGyroMag_mean | Average of Frequency Domain Mean of 3-axial Body Angular Velocity calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |     
|67| fBodyBodyGyroMag_std | Average of Frequency Domain Standard Deviation of 3-axial Body Angular Velocity calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |      
|68| fBodyBodyGyroJerkMag_mean | Average of Frequency Domain Mean of 3-axial Body Angular Velocity derived Jerk signal calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |  
|69| fBodyBodyGyroJerkMag_std | Average of Frequency Domain Standard Deviation of 3-axial Body Angular Velocity derived Jerk signal calculated Magnitude | NUMERIC | -1.0000000e+000 to 1.0000000e+000 |