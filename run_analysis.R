# install.packages("readr")
library(readr)


########  Read test Data

testdata <- read_fwf("UCI HAR Dataset/test/X_test.txt", fwf_widths(rep(16, 561)))

# read columnnames and rename columns of dataset
columnnames <- read.csv("UCI HAR Dataset/features.txt", sep = " ", header = FALSE)
columnnames$V2 <- gsub("\\()","",columnnames$V2)
columnnames$V2 <- gsub("^f","Frequency",columnnames$V2)
columnnames$V2 <- gsub("^t","Time",columnnames$V2)

names(testdata) <- columnnames$V2



# read subject and activity code and add to dataset
y_test <- read.csv("UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_test <- read.csv("UCI HAR Dataset/test/subject_test.txt", header = FALSE)

testdata <- cbind(subject_test, y_test, testdata)
names(testdata)[1] <- "subject"
names(testdata)[2] <- "ActivityCode"


########## Read train data set

traindata <- read_fwf("UCI HAR Dataset/train/X_train.txt", fwf_widths(rep(16, 561)))

# read columnnames and rename columns of dataset
# columnnames <- read.csv("UCI HAR Dataset/features.txt", sep = " ", header = FALSE)
names(traindata) <- columnnames$V2

# read subject and activity code and add to dataset
y_train <- read.csv("UCI HAR Dataset/train/y_train.txt", header = FALSE)
subject_train <- read.csv("UCI HAR Dataset/train/subject_train.txt", header = FALSE)

traindata <- cbind(subject_train, y_train, traindata)
names(traindata)[1] <- "subject"
names(traindata)[2] <- "ActivityCode"


# combine test and train datasets
alldata <- rbind(testdata, traindata)



# read activitynames and merge with activity code
activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = " ")
names(activity_labels)[2] <- "ActivityName"

mergeddata <- merge(alldata, activity_labels, by.x = "ActivityCode", by.y = "V1")


# select only columns that contain the mean and std
library(dplyr)
MeanAndStd <- subset(mergeddata, select = grep("subject|mean|std|ActivityName", names(mergeddata)))

#create tidy data set
tidydata <- MeanAndStd %>% group_by(subject, ActivityName) %>% summarise_all(funs(mean))

# write data to file
write.table(tidydata, "tidy_data.txt", row.name=FALSE)
