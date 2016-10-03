library(dplyr) # need for table manipulation

#-------------------------------------------------------------------------------
# Download the zip file , unzip and create a table from training and the test text files

## Download zip file https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
if(!file.exists("./Assignment4")) dir.create("./Assignment4")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./Assignment4/projectData_getCleanData.zip")

## Unzip zip file
Zip <- unzip("./Assignment4/projectData_getCleanData.zip", exdir = "./Assignment4")


trainingX <- read.table("./Assignment4/UCI HAR Dataset/train/X_train.txt")
trainingY <- read.table("./Assignment4/UCI HAR Dataset/train/y_train.txt")
trainingsubject <- read.table("./Assignment4/UCI HAR Dataset/train/subject_train.txt")
testingX <- read.table("./Assignment4/UCI HAR Dataset/test/X_test.txt")
testingY <- read.table("./Assignment4/UCI HAR Dataset/test/y_test.txt")
testingsubject <- read.table("./Assignment4/UCI HAR Dataset/test/subject_test.txt")

#Combine
X<-rbind(trainingX,testingX)
Y<-rbind(trainingY,testingY)
subject<-rbind(trainingsubject,testingsubject)
combineddata<-cbind(subject,Y,X)


features <- read.table("./Assignment4/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2]# only second column needed

#Extract only the columns that contain mean or std information

featuresMeanSTD <- grep(("mean\\(\\)|std\\(\\)"), features)

finalTable <- combineddata[,c(1:2, featuresMeanSTD+2)] # first 2 colunmns are subject and activity
colnames(finalTable) <- c("Subject", "Activity", features[featuresMeanSTD]) # change to column names in features table



#load activity name
activityName <- read.table("./Assignment4/UCI HAR Dataset/activity_labels.txt")

##  replace factor numbers  with  the activity names
finalTable$Activity <- factor(finalTable$Activity, levels = activityName[,1], labels = activityName[,2])

#-------------------------------------------------------------------------------
#scrub  label names

names(finalTable) <- gsub("()", "", names(finalTable),fixed=TRUE)
names(finalTable) <- gsub("^t", "Time", names(finalTable))
names(finalTable) <- gsub("^f", "Frequency", names(finalTable))
names(finalTable) <- gsub("-mean", "Mean", names(finalTable))
names(finalTable) <- gsub("-std", "STD", names(finalTable))
names(finalTable) <- gsub("Acc", "Accelerometer", names(finalTable))
names(finalTable) <- gsub("Gyro", "Gyroscope", names(finalTable))
names(finalTable) <- gsub("Mag", "Magnitude", names(finalTable))
names(finalTable) <- gsub("BodyBody", "Body", names(finalTable))

CleanFinalData <- finalTable %>%
  group_by(Subject, Activity) %>%
  summarise_each(funs(mean)) # mean of all observations grouped by subject and activity

write.table(CleanFinalData, "./Assignment4/FinalOutput.txt", row.names = FALSE)


