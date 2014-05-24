CourseProject
=============

JHU Data Science Course Project - Getting and Cleaning Data
<<<<<<< HEAD

###Loading and Preparing Files 
<p>trainx<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt" </p>
<p>RX<-read.table(trainx, sep = "", header = F) 					#load file X_train </p>

<p>trainy<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt"
<p>RY<-read.table(trainy, sep = "", header = F) 					#load file y_train </p>

<p>testx<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt"
<p>TX<-read.table(testx, sep = "", header = F) 					#load file X_test </p>

<p>testy<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt"
<p>TY<-read.table(testy, sep = "", header = F) 					#load file y_test </p>

<p>Act<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt"
<p>AL<-read.table(Act, sep = "", header = F) 					#load file Activity_labels </p>

<p>Fea<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt"
<p>fea<-read.table(Fea, sep = "", header = FALSE) 					#load file features </p>

<p>subjectR<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt"
<p>subR<-read.table(subjectR, sep = "", header = F) 				#load file subject_train </p>

<p>subjectT<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt"
subT<-read.table(subjectT, sep = "", header = F) 				#load file subject_test </p>

###Merging Datasets
<p>dataMergeX<-rbind(RX,TX) 							# merges two training sets (train and test)</p>
<p>dataMergeY<-rbind(RY,TY) 							# merges two training labels (train and test)</p>
<p>dataMergeSub<-rbind(subR,subT) 						# merges two subject lists (train and test)</p>

###Assigning Column Names
<p>features<-subset(fea, select=-V1) 						#takes out the number column, leaving only the description column</p>
<p>names(dataMergeX)<-features[1:561,] 						#assigns merges block of data column names from features file</p>
<p>names(dataMergeY)<-"Activity_ID" 						#assigns a column name for activities</p>
<p>names(dataMergeSub)<-"Subject" 						#assigns a column name for participants as Subject </p>
<p>names(AL)<-c("Activity_ID", "Activity_Label") 				#assigns column names to the columns in activities_label.txt file</p>

###Combining Merged Sets
<p>dataCombined<-cbind(dataMergeSub, dataMergeY, dataMergeX) 			#combines all merged datasets</p>

###Labels
<p>dataTogether<-merge(AL,dataCombined, by ="Activity_ID", all.x = T) 		#merges to assign labels</p>

###Reshaping Data
<p>install.packages(reshape2)</p>
<p>library(reshape2)</p>
<p>tidy<-dataTogether[,1:9] 							# subset of data for activity, subject, mean, and SD (first 9 columns)</p>
<p>dataMelt<-melt(tidy, id=c("Subject", "Activity_Label"))			# creates longer table</p>
<p>tidyData<-dcast(dataMelt, Subject + Activity_Label ~ variable, fun.aggregate=mean) #TIDY DATA</p>
