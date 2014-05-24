DESCRIPTORS AND MEASUREMENTS OF HUMAN ACITIVTY USING SMARTPHONES
                                                                                
Principal Investigator
Sofiyan Sheikh
Johns Hopkins University Carey Business School
100 International Dr.
Baltimore, MD. 21231

BIBLIOGRAPHIC CITATION                                                                                                        
Human Activity Recognition on Smartphones using a Multiclass
Hardware-Friendly Support Vector Machine
Davide Anguita,
Alessandro Ghio
Luca Oneto
Xavier Parra
Jorge L. Reyes-Ortiz.
International Workshop of Ambient Assisted Living (IWAAL 2012)
Vitoria-Gasteiz, Spain. Dec 2012

DATA DISCLAIMER                                                                                                            
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. 
Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
 
DATA COLLECTION DESCRIPTION   
SUMMARY:  Data were taken from data sets which estimated signals from 6 different activities of 30 individuals between the ages of 19 and 48. 
Variables in the tidy dataset include Subject as each participant, Activity_Label to describe different actions of participants, and means and 
standard deviations of the three signals – gravity, acceleration, jerk.

EXTENT OF COLLECTION:  8 data files
     documentation (text)
File 1:  	activity_labels			File 2:   	features	
Obj: 6       	Var: 2				Obj: 561   	Var: 1
File 3:   	subject_test			File 4:   	subject_train	
Obj: 2947   	Var: 1				Obj: 7352  	Var: 1
File 5:   	X_test				File 6:   	X_train
Obj: 2947   	Var: 561			Obj: 7352   	Var: 561
File 7:   	y_test				File 8:   	y_train	
Obj: 2947    	Var: 1				Obj: 7352    	Var: 1
                                              
EXTENT OF DATA TRANSFORMATION:  
•	Loaded and Prepared All Files 
•	Merged Datasets for Train and Test
•	Assigned Column Names
•	Combining Merged Sets into a Block Dataset
•	Added Activity Label Column to Block Dataset
•	Subsetted the Data – Mean and Standard Deviation Values
•	Reshaped Data using Melt and Dcast Functions
 
CODEBOOK                                                                                
Variable Name		Position	Values or Explanation
Subject			1		Participants assigned generic numbers from 1 to 30
Activity_Label		2		Laying
					Sitting
					Standing
					Walking
					Walking_Downstairs
					Walking_Upstairs
Activity_ID		3		6: Laying
					4: Sitting
					5: Standing
					1: Walking
					3:Walking_Downstairs
					2: Walking_Upstairs
tBodyAcc-mean()-X	4		mean values for x axial signal
tBodyAcc-mean()-Y	5		mean values for y axial signal
tBodyAcc-mean()-Z	6		mean values for z axial signal
tBodyAcc-std()-X	7		Standard Deviation values for x axial signal
tBodyAcc-std()-Y	8		Standard Deviation values for y axial signal
tBodyAcc-std()-Z	9		Standard Deviation values for z axial signal

