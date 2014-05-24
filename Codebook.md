DESCRIPTORS AND MEASUREMENTS OF HUMAN ACITIVTY USING SMARTPHONES
                                                                                
Principal Investigator<br />
Sofiyan Sheikh<br />
Johns Hopkins University Carey Business School<br />
100 International Dr.<br />
Baltimore, MD. 21231<br />

BIBLIOGRAPHIC CITATION                                                                                                        
Human Activity Recognition on Smartphones using a Multiclass<br />
Hardware-Friendly Support Vector Machine<br />
Davide Anguita<br />
Alessandro Ghio<br />
Luca Oneto<br />
Xavier Parra<br />
Jorge L. Reyes-Ortiz<br />
International Workshop of Ambient Assisted Living (IWAAL 2012)<br />
Vitoria-Gasteiz, Spain. Dec 2012<br />

DATA DISCLAIMER                                                                                                            
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse.Any commercial use is prohibited. <br />
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.<br />
 
DATA COLLECTION DESCRIPTION   
SUMMARY:  Data were taken from data sets which estimated signals from 6 different activities of 30 individuals between the ages of 19 and 48.Variables in the tidy dataset include Subject as each participant, Activity_Label to describe different actions of participants, and means and standard deviations of the three signals – gravity, acceleration, jerk. <br />

EXTENT OF COLLECTION:  8 data files<br />
     documentation (text)<br />
|File                 |Obj          |Var       | <br />

|activity_labels      | 6	    | 2        |<br />
|features	      | 561	    | 1	       |<br />
|subject_test 	      | 2947   	    | 1        |<br />
|subject_train	      | 7352  	    | 1	       |<br />
|X_test		      | 2947   	    | 561      |<br />
|X_train	      | 7352   	    | 561      |<br />
|y_test		      | 2947        | 1	       |<br />
|y_train	      | 7352        | 1        |<br />
                                              
EXTENT OF DATA TRANSFORMATION:  
*	Loaded and Prepared All Files <br />
*	Merged Datasets for Train and Test<br />
*	Assigned Column Names<br />
*	Combining Merged Sets into a Block Dataset<br />
*	Added Activity Label Column to Block Dataset<br />
*	Subsetted the Data – Mean and Standard Deviation Values<br />
*	Reshaped Data using Melt and Dcast Functions<br />
 
CODEBOOK                                                                                
| Variable Name     | Position   | Values or Explanation                               |
|:------------------|:----------:|----------------------------------------------------:|
| Subject           | 1          | Participants assigned generic numbers from 1 to 30  |
| Activity_Label    | 2          | Laying                                              |
|                   |            | Sitting                                             |
|                   |            | Standing                                            |
|                   |            | Walking                                             |
|                   |            | Walking_Downstairs                                  |
|                   |            | Walking_Upstairs                                    |
| Activity_ID       | 3          | 6: Laying                                           |
|                   |            | 4: Sitting                                          |
|                   |            | 5: Standing                                         |
|                   |            | 1: Walking                                          |
|                   |            | 3:Walking_Downstairs                                |
|                   |            | 2: Walking_Upstairs                                 |
| tBodyAcc-mean()-X | 4          | mean values for x axial signal                      |
| tBodyAcc-mean()-Y | 5          | mean values for y axial signal                      |
| tBodyAcc-mean()-Z | 6          | mean values for z axial signal                      |
| tBodyAcc-std()-X  | 7          | Standard Deviation values for x axial signal        |
| tBodyAcc-std()-Y  | 8          | Standard Deviation values for y axial signal        |
| tBodyAcc-std()-Z  | 9          | Standard Deviation values for z axial signal        |

