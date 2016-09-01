library(reshape2)

# Download the file and put the file in the "data" folder and unzip the dataset

if(!file.exists("data")){dir.create("data")}
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile="data/Dataset.zip")
unzip(zipfile="data/Dataset.zip",exdir="data")

# Read activity lavels from file
activities <- read.table("data/UCI HAR Dataset/activity_labels.txt", header = FALSE)

# Read features from file and take only required features
features <- read.table("data/UCI HAR Dataset/features.txt", header = FALSE)
featuresrequired <- grep(".*mean.*|.*std.*", features[,2])

# Convert the feature names into easily readable and nice names
featuresrequired.names <- features[featuresrequired,2]
featuresrequired.names <- gsub("\\()","",featuresrequired.names)
featuresrequired.names <- gsub('-mean', 'Mean', featuresrequired.names)
featuresrequired.names <- gsub('-std', 'StdandardDeviation ', featuresrequired.names)
featuresrequired.names <- gsub("^(t)","Time", featuresrequired.names)
featuresrequired.names <- gsub("^f", "Frequency", featuresrequired.names)
featuresrequired.names <- gsub("Acc", "Accelerometer", featuresrequired.names)
featuresrequired.names <- gsub("Gyro", "Gyroscope", featuresrequired.names)
featuresrequired.names <- gsub("Mag", "Magnitude", featuresrequired.names)
featuresrequired.names <- gsub("BodyBody", "Body", featuresrequired.names)

# Read all training data from "data/UCI HAR Dataset/train" folder and marge data in a data frame
trainingData <- read.table("data/UCI HAR Dataset/train/X_train.txt", header = FALSE)[featuresrequired]
trainingActivities <- read.table("data/UCI HAR Dataset/train/Y_train.txt", header = FALSE)
trainingSubjects <- read.table("data/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
training <- cbind(trainingSubjects, trainingActivities, trainingData)

# Read all test data from "data/UCI HAR Dataset/test" folder and marge data in a data frame
testData <- read.table("data/UCI HAR Dataset/test/X_test.txt", header = FALSE )[featuresrequired]
testActivities <- read.table("data/UCI HAR Dataset/test/Y_test.txt" , header =  FALSE)
testSubjects <- read.table("data/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
test <- cbind(testSubjects, testActivities, testData)

# Marge all training anf test data into a data frame
margedData <- rbind(training, test)

# Assign column name into marged data
colnames(margedData) <- c("subject", "activity", featuresrequired.names)

# Create factors for activity and subject column
margedData$activity <- factor(margedData$activity, levels = activities[,1], labels = activities[,2])
margedData$subject <- as.factor(margedData$subject)

# Melt data by subject and activity to group all data for each subject with different activities
margedDataGrouped <- melt(margedData, id = c("subject", "activity"))

# Calculate average for each features from the melted data 
margedDataGroupedMean <- dcast(margedDataGrouped, subject + activity ~ variable, mean)

# Write tidy data into "data/TidyData.txt" file
write.table(margedDataGroupedMean, "data/TidyData.txt", row.names = FALSE, quote = FALSE)


