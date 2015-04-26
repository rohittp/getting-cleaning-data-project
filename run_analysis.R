library(dplyr)
library(reshape2)
#get working directory 
x<-getwd()
#read data files into R, this will read files from the samsung data set "UCI HAR Dataset in the working ditectory.
#Using file separator based on the platform, this will make it platform independent"
features<-read.table(file=file.path(x,"UCI HAR Dataset","features.txt",fsep = .Platform$file.sep))
activity_labels<-read.table(file=file.path(x,"UCI HAR Dataset","activity_labels.txt",fsep = .Platform$file.sep))
x_train<-read.table(file=file.path(x,"UCI HAR Dataset","train","X_train.txt",fsep = .Platform$file.sep))
x_test<-read.table(file=file.path(x,"UCI HAR Dataset","test","X_test.txt",fsep = .Platform$file.sep))
train_subject<-read.table(file=file.path(x,"UCI HAR Dataset","train","subject_train.txt",fsep = .Platform$file.sep))
test_subject<-read.table(file=file.path(x,"UCI HAR Dataset","test","subject_test.txt",fsep = .Platform$file.sep))
train_activity<-read.table(file=file.path(x,"UCI HAR Dataset","train","y_train.txt",fsep = .Platform$file.sep))
test_activity<-read.table(file=file.path(x,"UCI HAR Dataset","test","y_test.txt",fsep = .Platform$file.sep))

#merge training & test data sets
complete_data<-rbind(x_train,x_test)

#Extract mean and std deviation columns from complete data set
names<-features$V2
index<-grep("mean|std",names)
extract.name<-names[index]
extract.data<-complete_data[,index]
names(extract.data)<-extract.name

#prepare subject data
subject<-rbind(train_subject,test_subject)
names(subject)<-"subjectId"

#prepare activity data
names(activity_labels)<-c("activityId","activityLabel")
activity_labels<-as.data.frame(sapply(activity_labels,gsub,pattern="_",replacement=" "))
activity<-rbind(train_activity,test_activity)
names(activity)<-"activityId"

#Join activity and activity labels data
match.index<-match(activity$activityId,activity_labels$activityId)
activity<-mutate(activity,activityLabel=activity_labels[match.index,2])

#join subject,activity_label & merged & extracted (training & test) data
data<-cbind(subject,activityLabel=activity$activityLabel,extract.data)

#Give descriptive variable names by removing all punctuation like (),- etc.
names(data)<-gsub("[[:punct:]]","",names(data))

#Melt data set with subjectId,activityLabel as id
data.melt<-melt(data,id.vars=c("subjectId","activityLabel"))

#create tidy data into wide form
tidy_data_wide<-dcast(data.melt,subjectId+activityLabel~variable,mean)

#Write the file to the current working directory
write.table(tidy_data_wide,file=file.path(x,"tidy_data_wide.txt",fsep = .Platform$file.sep))
