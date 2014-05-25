#DESCRIPTORS AND MEASUREMENTS OF HUMAN ACITIVTY USING SMARTPHONES
                                                                                
##PRINCIPAL INVESTIGATOR<br />
Sofiyan Sheikh<br />
Johns Hopkins University Carey Business School<br />
100 International Dr.<br />
Baltimore, MD. 21231<br />

##BIBLIOGRAPHIC CITATION                                                                                                        
Human Activity Recognition on Smartphones using a Multiclass<br />
Hardware-Friendly Support Vector Machine<br />
Davide Anguita<br />
Alessandro Ghio<br />
Luca Oneto<br />
Xavier Parra<br />
Jorge L. Reyes-Ortiz<br />
International Workshop of Ambient Assisted Living (IWAAL 2012)<br />
Vitoria-Gasteiz, Spain. Dec 2012<br />

##DATA DISCLAIMER                                                                                                            
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse.Any commercial use is prohibited. <br />
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.<br />
 
##DATA COLLECTION DESCRIPTION   
SUMMARY:  Data were taken from data sets which estimated signals from 6 different activities of 30 individuals between the ages of 19 and 48.Variables in the tidy dataset include Subject as each participant, Activity_Label to describe different actions of participants, and means and standard deviations of the three signals – gravity, acceleration, jerk. <br />

##EXTENT OF COLLECTION:  8 data files<br />
###|File                 |Obj        |Var      |<br />
|activity_labels      |6	   | 2      |<br />
|features	      | 561	    | 1	       |<br />
|subject_test 	      | 2947   	    | 1        |<br />
|subject_train	      | 7352  	    | 1	       |<br />
|X_test		      | 2947   	    | 561      |<br />
|X_train	      | 7352   	    | 561      |<br />
|y_test		      | 2947        | 1	       |<br />
|y_train	      | 7352        | 1        |<br />
                                              
##EXTENT OF DATA TRANSFORMATION:  
*	Loaded and Prepared All Files <br />
*	Merged Datasets for Train and Test<br />
*	Assigned Column Names<br />
*	Combining Merged Sets into a Block Dataset<br />
*	Added Activity Label Column to Block Dataset<br />
*	Subsetted the Data – Mean and Standard Deviation Values<br />
*	Reshaped Data using Melt and Dcast Functions<br />
 
##CODEBOOK                                                                                
                               
###Subject [1] <br />
Participants assigned generic numbers from 1 to 30 <br />
###Activity_Label [2]   <br />
Laying             <br />
Sitting                                             <br />
Standing                                            <br />
Walking                                             <br />
Walking_Downstairs                                  <br />
Walking_Upstairs                                    <br />
###Activity_ID [3]       <br />
6: Laying                                           <br />
4: Sitting                                          <br />
5: Standing                                         <br />
1: Walking                                          <br />
3:Walking_Downstairs                                <br />
2: Walking_Upstairs                                 <br />
###tBodyAcc-mean()-X [4]         <br />
mean values for x axial signal                      <br />
###tBodyAcc-mean()-Y [5]         <br />
mean values for y axial signal                      <br />
###tBodyAcc-mean()-Z [6]          <br />
mean values for z axial signal                      <br />
###tBodyAcc-std()-X  [7]          <br />
Standard Deviation values for x axial signal        <br />
###tBodyAcc-std()-Y  [8]          <br />
Standard Deviation values for y axial signal        <br />
###tBodyAcc-std()-Z  [9]          <br />
Standard Deviation values for z axial signal        <br />
###tGravityAcc-mean()-X [10]<br />
mean values for x gravity signal                      <br />
###tGravityAcc-mean()-Y [11]<br />
mean values for y gravity signal                      <br />
###tGravityAcc-mean()-Z [12]<br />
mean values for z gravity signal                      <br />
###tGravityAcc-std()-X  [13]  <br />          
Standard Deviation values for x gravity signal        <br />
###tGravityAcc-std()-Y [14]<br />
Standard Deviation values for y gravity signal        <br />
###tGravityAcc-std()-Z [15]    <br />        
Standard Deviation values for z gravity signal        <br />
###tBodyAccJerk-mean()-X [16]<br />
mean values for x jerk signal                      <br />
###tBodyAccJerk-mean()-Y [17]  <br />        
mean values for y jerk signal                      <br />
###tBodyAccJerk-mean()-Z [18]<br />
mean values for y jerk signal                      <br />
###tBodyAccJerk-std()-X [19]<br />
Standard Deviation values for x jerk signal        <br />
###tBodyAccJerk-std()-Y [20]<br />
Standard Deviation values for y jerk signal        <br />
###tBodyAccJerk-std()-Z [21]   <br />        
Standard Deviation values for z jerk signal        <br />
###tBodyGyro-mean()-X [22]<br />
mean values for x gyro signal                      <br />
###tBodyGyro-mean()-Y [23]     <br />        
mean values for y gyro signal                      <br />
###tBodyGyro-mean()-Z [24]<br />
mean values for z gyro signal                      <br />
###tBodyGyro-std()-X [25]        <br />      
Standard Deviation values for x gyro signal        <br />
###tBodyGyro-std()-Y [26]<br />
Standard Deviation values for y gyro signal        <br />
###tBodyGyro-std()-Z [27]<br />
Standard Deviation values for z gyro signal        <br />
###tBodyGyroJerk-mean()-X [28]<br />
mean values for x gyro jerk signal                      <br />
###tBodyGyroJerk-mean()-Y [29]     <br />    
mean values for y gyro jerk signal                      <br />
###tBodyGyroJerk-mean()-Z [30]<br />
mean values for z gyro jerk signal                      <br />
###tBodyGyroJerk-std()-X [31]    <br />      
Standard Deviation values for x gyro jerk signal        <br />
###tBodyGyroJerk-std()-Y [32]<br />
Standard Deviation values for y gyro jerk signal        <br />
###tBodyGyroJerk-std()-Z [33]   <br />       
Standard Deviation values for z gyro jerk signal        <br />
###tBodyAccMag-mean() [34]<br />
mean values for body acc signal                      <br />
###tBodyAccMag-std() [35]      <br />        
Standard Deviation values for body acc signal        <br />
###tGravityAccMag-mean()[36]<br />
mean values for gravity acc signal                      <br />
###tGravityAccMag-std() [37]     <br />      
Standard Deviation values for gravity acc signal        <br />
###tBodyAccJerkMag-mean()[38]<br />
mean values for body acc jerk signal                      <br />
###tBodyAccJerkMag-std() [39]   <br />       
Standard Deviation values for body acc jerk signal        <br />
###tBodyGyroMag-mean() [40]<br />
mean values for body gyro signal                      <br />
###tBodyGyroMag-std() [41]       <br />      
Standard Deviation values for body gyro signal        <br />
###tBodyGyroJerkMag-mean() [42]<br />
mean values for body gyro jerk signal                      <br />
###tBodyGyroJerkMag-std() [43]  <br />       
Standard Deviation values for body gyro jerk signal        <br />
###fBodyAcc-mean()-X [44]     <br />          
mean values for x body acc signal                      <br />
###fBodyAcc-mean()-Y [45]    <br />          
mean values for y body acc signal                      <br />
###fBodyAcc-mean()-Z [46]<br />
mean values for z body acc signal                      <br />
###fBodyAcc-std()-X [47]               <br />
Standard Deviation values for x body acc signal        <br />
###fBodyAcc-std()-Y [48]<br />
Standard Deviation values for y body acc signal        <br />
###fBodyAcc-std()-Z [49]<br />
Standard Deviation values for z body acc signal        <br />
###fBodyAcc-meanFreq()-X [50]<br />
meanFreq values for x axial signal                      <br />
###fBodyAcc-meanFreq()-Y [51]<br />
meanFreq values for y axial signal                      <br />
###fBodyAcc-meanFreq()-Z [52]<br />
meanFreq values for z axial signal                      <br />
###fBodyAccJerk-mean()-X [53]  <br />        
mean values for x acc jerk signal                      <br />
###fBodyAccJerk-mean()-Y [54]<br />
mean values for y acc jerk signal                      <br />
###fBodyAccJerk-mean()-Z [55]  <br />        
mean values for z acc jerk signal                      <br />
###fBodyAccJerk-std()-X [56]<br />
Standard Deviation values for x acc jerk signal        <br />
###fBodyAccJerk-std()-Y [57]    <br />       
Standard Deviation values for y acc jerk signal        <br />
###fBodyAccJerk-std()-Z [58]<br />
Standard Deviation values for z acc jerk signal        <br />
###fBodyAccJerk-meanFreq()-X [59] <br />     
meanFreq values for x axial signal                      <br />
###fBodyAccJerk-meanFreq()-Y[60]<br />
meanFreq values for y axial signal                      <br />
###fBodyAccJerk-meanFreq()-Z [61] <br />     
meanFreq values for z axial signal                      <br />
###fBodyGyro-mean()-X [62]<br />
mean values for x fbody gyro axial signal                      <br />
###fBodyGyro-mean()-Y [63]        <br />     
mean values for y fbody gyro axial signal                      <br />
###fBodyGyro-mean()-Z [64]<br />
mean values for z fbody gyro axial signal                      <br />
###fBodyGyro-std()-X [65]    <br />          
Standard Deviation values for x fbody gyro axial signal        <br />
###fBodyGyro-std()-Y [66]<br />
Standard Deviation values for y fbody gyro axial signal        <br />
###fBodyGyro-std()-Z [67]      <br />        
Standard Deviation values for z fbody gyro axial signal        <br />
###fBodyGyro-meanFreq()-X [68]<br />
meanFreq values for x axial signal                      <br />
###fBodyGyro-meanFreq()-Y [69]  <br />       
meanFreq values for y axial signal                      <br />
###fBodyGyro-meanFreq()-Z [70]<br />
meanFreq values for z axial signal                      <br />
###fBodyAccMag-mean() [71]     <br />        
mean values for fbody acc axial signal                      <br />
###fBodyAccMag-std() [72]<br />
Standard Deviation values for fbody acc axial signal        <br />
###fBodyAccMag-meanFreq() [73]     <br />    
meanFreq values for fbody acc axial signal                      <br />
###fBodyBodyAccJerkMag-mean() [74]<br />
mean values for fbody jerk axial signal                      <br />
###fBodyBodyAccJerkMag-std() [75]   <br />   
Standard Deviation values for fbody jerk axial signal        <br />
###fBodyBodyAccJerkMag-meanFreq()[76] <br /> 
meanFreq values for f body jerk mag axial signal                      <br />
###fBodyBodyGyroMag-mean() [77]   <br />     
mean values for fbody gyro mag axial signal                      <br />
###fBodyBodyGyroMag-std() [78]<br />
Standard Deviation values for fbody gyro mag axial signal        <br />
###fBodyBodyGyroMag-meanFreq() [79]    <br />
meanFreq values for fbody gyro mag axial signal                      <br />
###fBodyBodyGyroJerkMag-mean() [80]<br />
mean values for fbody gyro jerk mag axial signal                      <br />
###fBodyBodyGyroJerkMag-std() [81]    <br /> 
Standard Deviation values for fbody gyro jerk mag axial signal        <br />
###fBodyBodyGyroJerkMag-meanFreq() [82]<br />
meanFreq values for fbody gyro jerk mag axial signal                      <br />