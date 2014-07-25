# This script reads files with:
# 1. training and test data from the accelerometers and gyroscopes
#    from wearable fitness devices.
# 2. data mapping certain codes to their descriptive labels 
#
# The script tidies the data up for analysis by:
# 1. adding in descriptive labels
# 2. retaining only desired measures (means and stds)
# 3. merging training and test data
# 4. making categorical fields as factors

# setting my working directory
setwd("c:/Users/karmacha/Documents/workshop/coursera/getdata-005/course_project/")

# read data files
train.x <- read.table("UCI HAR Dataset/train/X_train.txt",
                      stringsAsFactors=FALSE)
test.x <- read.table("UCI HAR Dataset/test/X_test.txt",
                      stringsAsFactors=FALSE)

# check for NAs in data
sum(is.na(train.x))
sum(is.na(test.x))
# there is none. So, not taking any action to handle NAs.


# read activity codes
train.act_code <- read.table("UCI HAR Dataset/train/y_train.txt",
                      stringsAsFactors=FALSE)
names(train.act_code) <- c("activity_code")

test.act_code <- read.table("UCI HAR Dataset/test/y_test.txt",
                             stringsAsFactors=FALSE)
names(test.act_code) <- c("activity_code")


# read subject code
test.subject_code <- read.table("UCI HAR Dataset/test/subject_test.txt",
                                 stringsAsFactors=FALSE)
names(test.subject_code) <- c("subject_code")

train.subject_code <- read.table("UCI HAR Dataset/train/subject_train.txt",
                                stringsAsFactors=FALSE)
names(train.subject_code) <- c("subject_code")


# read the description files
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt",
                              stringsAsFactors=FALSE)
names(activity_labels) <- c("activity_code", "activity")


# add activity description to act_code
train.act_code <- merge(train.act_code,
                        activity_labels,
                        by="activity_code",
                        all.x=TRUE)
test.act_code <- merge(test.act_code,
                       activity_labels,
                       by="activity_code",
                       all.x=TRUE)


# read features set
features <- read.table("UCI HAR Dataset/features.txt",
                       stringsAsFactors=FALSE)

# vector with ids of activities with "mean()" or "std()" in the name
mean_and_std <- c(grep("mean\\(\\)", features$V2),
                  grep("std\\(\\)", features$V2))

# features with mean and std
features.mas <- features[mean_and_std, ]


# pick only mean and std fields from data
train.data <- train.x[, features.mas$V1]
test.data <- test.x[, features.mas$V1]

# put real column names
names(train.data) <- features.mas$V2
names(test.data) <- features.mas$V2

# add the subject column
train.data <- cbind(subject=train.subject_code$subject_code, train.data)
test.data <- cbind(subject=test.subject_code$subject_code, test.data)

# add activity labels
train.data <- cbind(activity=train.act_code$activity, train.data)
test.data <- cbind(activity=test.act_code$activity, test.data)

# add identifier for test and training before merging
# (commenting out because project spec doesn't require it)
#train.data$type <- "train"
#test.data$type <- "test"


# merge training and test datasets
# this is the final dataset for analysis
# after converting the catagorical variables as factors
DATA <- rbind(train.data, test.data)
DATA$subject <- factor(DATA$subject)
DATA$activity <- factor(DATA$activity)
#DATA$type <- factor(DATA$type) # field not required for project

# independent dataset with averages (mean) of
# measures by activity and subject
AGG <- aggregate(. ~ activity+subject, data=DATA, FUN=mean)

# write tidy data to file
#saveRDS(DATA, file="tidydata.rds")
#saveRDS(AGG, file="tidydata-agg.rds")
write.table(DATA, file="tidydata-csv.txt", sep=",")
write.table(AGG, file="tidydata-agg-csv.txt", sep=",")