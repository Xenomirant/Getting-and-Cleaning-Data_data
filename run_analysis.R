setwd('C:\\Users\\Asus\\Documents\\GitHub\\Getting-and-Cleaning-Data_data')

filename <- 'getdata_projectfiles_UCI HAR Dataset.zip'

if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

library(tidyverse)

#reading all the necessary datatables
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))

activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)

y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)

y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")

#merging X training and test datatables
X_full <- rbind(x_train, x_test)

#merging Y training and test datatables
Y_full <- rbind(y_train, y_test)

#merging data for each subject
Subject_full <- rbind(subject_train, subject_test)

#merging all dataframes as they have the same number of rows
Merged_Data <- cbind(Subject_full, Y_full, X_full)


#getting rid of unnecessary data
tidy_frame <- Merged_Data %>% 
  select(subject, code, contains('mean'), contains('std'))

#changing code variables to more understandable ones
tidy_frame$code <- activities[tidy_frame$code, 2]

#renaming columns in a more appropriate way
names(tidy_frame)[2] <- "activity"
names(tidy_frame) <- gsub("Acc", "accelerometer", names(tidy_frame))
names(tidy_frame) <- gsub("Gyro", "gyroscope", names(tidy_frame))
names(tidy_frame) <- gsub("BodyBody", "body", names(tidy_frame))
names(tidy_frame) <- gsub("Mag", "magnitude", names(tidy_frame))
names(tidy_frame) <- gsub("^t", "time", names(tidy_frame))
names(tidy_frame) <- gsub("^f", "frequency", names(tidy_frame))
names(tidy_frame) <- gsub("tBody", "timeBody", names(tidy_frame))
names(tidy_frame) <- gsub("-mean()", "MEAN", names(tidy_frame), ignore.case = TRUE)
names(tidy_frame) <- gsub("-std()", "STD", names(tidy_frame), ignore.case = TRUE)
names(tidy_frame) <- gsub("-freq()", "frequency", names(tidy_frame), ignore.case = TRUE)

#factorizing the categorial variables
tidy_frame$activity <- factor(tidy_frame$activity)
tidy_frame$subject <- factor(tidy_frame$subject)

#creating the final dataframe
df <- tidy_frame %>% 
  group_by(subject, activity) %>% 
  summarise_all(mean)

#take a look on final data
glimpse(df)

#write final data
write.table(df, "output_data.txt", row.name=FALSE)
