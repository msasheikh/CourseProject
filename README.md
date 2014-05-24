CourseProject
=============

JHU Data Science Course Project - Getting and Cleaning Data

setwd("C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/")<br />

##Loading and Preparing Files

trainx<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt"<br />
RX<-read.table(trainx, sep = "", header = F) #load file X_train<br />

trainy<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt"<br />
RY<-read.table(trainy, sep = "", header = F) #load file y_train<br />

testx<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt"<br />
TX<-read.table(testx, sep = "", header = F) #load file X_test<br />

testy<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt"<br />
TY<-read.table(testy, sep = "", header = F) #load file y_test<br />

Act<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt"<br />
AL<-read.table(Act, sep = "", header = F) #load file Activity_labels<br />

Fea<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt"<br />
fea<-read.table(Fea, sep = "", header = FALSE) #load file features<br />

subjectR<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt"<br />
subR<-read.table(subjectR, sep = "", header = F) #load file subject_train<br />

subjectT<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt"<br />
subT<-read.table(subjectT, sep = "", header = F) #load file subject_test<br />

###Merging Datasets
dataMergeX<-rbind(RX,TX) 							# merges two training sets (train and test)<br />
dataMergeY<-rbind(RY,TY) 							# merges two training labels (train and test)<br />
dataMergeSub<-rbind(subR,subT) 							# merges two subject lists (train and test)<br />

###Assigning Column Names
features<-subset(fea, select=-V1) 						#takes out the number column, leaving only the description column<br />
names(dataMergeX)<-features[1:561,] 						#assigns merges block of data column names from features file<br />
names(dataMergeY)<-"Activity_ID" 						#assigns a column name for activities<br />
names(dataMergeSub)<-"Subject" 							#assigns a column name for participants as Subject <br />
names(AL)<-c("Activity_ID", "Activity_Label") 					#assigns column names to the columns in activities_label.txt file<br />

###Combining Merged Sets
dataCombined<-cbind(dataMergeSub, dataMergeY, dataMergeX) 			#combines all merged datasets<br />

###Labels
dataTogether<-merge(AL,dataCombined, by ="Activity_ID", all.x = T) 		#merges to assign labels<br />

###Reshaping Data
install.packages(reshape2)<br />
library(reshape2)<br />
tidy<-dataTogether[,1:9] 							# subset of data for activity, subject, mean, and SD (first 9 columns)<br />
dataMelt<-melt(tidy, id=c("Subject", "Activity_Label"))				# creates longer table<br />
tidyData<-dcast(dataMelt, Subject + Activity_Label ~ variable, fun.aggregate=mean) #TIDY DATA<br />

#Produce Dataset
write.table(tidyData, "tidyData.txt")						# exports dataset as a text file
