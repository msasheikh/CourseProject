setwd("C:/Users/S S/Dropbox/Cousera/Getting and Cleaning Data/")

##Loading and Preparing Files

trainx<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt"
RX<-read.table(trainx, sep = "", header = F) #load file X_train

trainy<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt"
RY<-read.table(trainy, sep = "", header = F) #load file y_train

testx<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt"
TX<-read.table(testx, sep = "", header = F) #load file X_test

testy<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt"
TY<-read.table(testy, sep = "", header = F) #load file y_test

Act<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt"
AL<-read.table(Act, sep = "", header = F) #load file Activity_labels

Fea<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt"
fea<-read.table(Fea, sep = "", header = FALSE) #load file features

subjectR<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt"
subR<-read.table(subjectR, sep = "", header = F) #load file subject_train

subjectT<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt"
subT<-read.table(subjectT, sep = "", header = F) #load file subject_test

#Merging Datasets
dataMergeX<-rbind(RX,TX) # merges two training sets (train and test)
dataMergeY<-rbind(RY,TY) # merges two training labels (train and test)
dataMergeSub<-rbind(subR,subT) # merges two subject lists (train and test)

##Assigning Column Names
features<-subset(fea, select=-V1)
names(dataMergeX)<-features[1:561,]
names(dataMergeY)<-"Activity_ID"
names(dataMergeSub)<-"Subject"
names(AL)<-c("Activity_ID", "Activity_Label")

#Combining Merged Sets
x<-names(dataMergeX)
y<-grep("std|mean", x)
dataMergeX<-dataMergeX[,y]
dataCombined<-cbind(dataMergeSub, dataMergeY, dataMergeX)

#Labels
dataTogether<-merge(AL,dataCombined, by ="Activity_ID", all.x = T) # merge to assign labels

#Reshaping Data
install.packages(reshape2)
library(reshape2)
dataMelt<-melt(dataTogether, id=c("Subject", "Activity_Label"))
tidyData<-dcast(dataMelt, Subject + Activity_Label ~ variable, fun.aggregate=mean)

#Produce Dataset
write.table(tidyData, "tidyData.txt")