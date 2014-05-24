##Loading and Preparing Files 
trainx<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/CourseProject/Data/train/X_train.txt"
RX<-read.table(trainx, sep = "", header = F)   				#load file X_train

trainy<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/CourseProject/Data/train/y_train.txt"
RY<-read.table(trainy, sep = "", header = F) 					#load file y_train

testx<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/CourseProject/Data/test/X_test.txt"
TX<-read.table(testx, sep = "", header = F) 					#load file X_test

testy<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/CourseProject/Data/test/y_test.txt"
TY<-read.table(testy, sep = "", header = F) 					#load file y_test

Act<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/CourseProject/Data/activity_labels.txt"
AL<-read.table(Act, sep = "", header = F) 					#load file Activity_labels

Fea<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/CourseProject/Data/features.txt"
fea<-read.table(Fea, sep = "", header = FALSE) 					#load file features

subjectR<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/CourseProject/Data/train/subject_train.txt"
subR<-read.table(subjectR, sep = "", header = F) 				#load file subject_train

subjectT<-"C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/CourseProject/Data/test/subject_test.txt"
subT<-read.table(subjectT, sep = "", header = F) 				#load file subject_test

#Merging Datasets
dataMergeX<-rbind(RX,TX) 							# merges two training sets (train and test)
dataMergeY<-rbind(RY,TY) 							# merges two training labels (train and test)
dataMergeSub<-rbind(subR,subT) 							# merges two subject lists (train and test)

#Assigning Column Names
features<-subset(fea, select=-V1) 						#takes out the number column, leaving only the description column
names(dataMergeX)<-features[1:561,] 						#assigns merges block of data column names from features file
names(dataMergeY)<-"Activity_ID" 						#assigns a column name for activities
names(dataMergeSub)<-"Subject" 							#assigns a column name for participants as Subject 
names(AL)<-c("Activity_ID", "Activity_Label") 					#assigns column names to the columns in activities_label.txt file

#Combining Merged Sets
dataCombined<-cbind(dataMergeSub, dataMergeY, dataMergeX) 			#combines all merged datasets

#Labels
dataTogether<-merge(AL,dataCombined, by ="Activity_ID", all.x = T) 		#merges to assign labels

#Reshaping Data
install.packages(reshape2)
library(reshape2)
tidy<-dataTogether[,1:9] 							# subset of data for activity, subject, mean, and SD (first 9 columns)
dataMelt<-melt(tidy, id=c("Subject", "Activity_Label"))				# creates longer table
tidyData<-dcast(dataMelt, Subject + Activity_Label ~ variable, fun.aggregate=mean) #TIDY DATA

