# Merge the training and test data sets to create one data set
setwd("C:/work/coursera/DSSpec")
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
xmerge <- rbind(xtrain, xtest)

# Read and insert the variable names for the merged data set
vars <- read.table("./UCI HAR Dataset/features.txt")
unique_names <- make.names(names = vars$V2, unique = T, allow_ = T)
vars$V2 <- unique_names
colnames(xmerge) <- vars$V2 

# Extract only the measurements on the mean and standard deviation
xmerge_mean_std <- select(xmerge, grep("mean[\\.]|std", names(xmerge)))

# Descriptive activity names are used in the data set
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
activity_all <- rbind(activity_train, activity_test)
colnames(activity_all) <- "activity"
for(i in 1:nrow(activity_all)){
  activity_all[i,1] = as.character(activity_labels[activity_all[i,1],2])
  }
dataset_mean_std <- data.frame(activity_all, xmerge_mean_std)

# Label the data set with descriptive variable names
names(dataset_mean_std) <- gsub("[\\.]", "_", names(dataset_mean_std))
names(dataset_mean_std) <- gsub("__", "", names(dataset_mean_std))

# Create second data set with average of each variable for each activity and each subject
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(subject_train, subject_test)
colnames(subject) <- "subject"
dataset_mean_std <- data.frame(subject, dataset_mean_std)
grouped <- group_by(dataset_mean_std, activity, subject)
tidydata_averages <- summarize_all(grouped, funs(mean))
write.table(tidydata_averages, file = "./UCI HAR Dataset/tidydata.txt", row.names = F, col.names = T)
