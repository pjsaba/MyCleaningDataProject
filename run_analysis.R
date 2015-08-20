# Author: Paulo Assuncao
# Note: To run this script, please unzip downloaded dataset in its very directory. This script 
# will generate the final result in its directory

library(plyr)
library(dplyr)

# script_dir and datafiles_dir are variables that store script and datasets base directories
script_dir <- getwd()
datafiles_dir <- paste(script_dir, "/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset", sep = "")

setwd(datafiles_dir)

# Storing features names into a vector
features <- read.csv("features.txt", sep = " ", header = FALSE)
features <- as.character(features[, 2])

# Storing activities names into a dataframe. actitivy_id contains number of activitity (1 to 6) and 
# activity_name the respective name ("WALKING", "SITTING", etc.)
activities <- read.csv("activity_labels.txt", sep = " ", header = FALSE, col.names = c("activity_id", "activity_name"))

# The following vector will contain all features names containing "mean()" and "std()" strings. It will be used
# to subset data.frame created after data reading and merging/joining operations
# It was initiated with 3 elements because the final data.frame will contain 3 first columns comprising
# subject_id (1 to 30), activity_id (1 to 6) and activity_name ("WALKING", "SITTING", etc.)
tidy_data_column_list <- c(1, 2, 3)

# The following loop uses regular expressions to identify mean() and std() measures
# This loop also processes features names and generates a more legible format (characters "-", ",", "(" and ")" 
# are converted to underline "_" except when they are the last characters of a feature name. In this situation 
# characters are eliminated)
for (i in 1:length(features)) {
    if(grepl('MEAN\\(\\)|STD\\(\\)', toupper(features[i]))) {
        tidy_data_column_list <- c(tidy_data_column_list, i + 3)
    }  
  
    features[i] <- gsub('[-,\\(\\)]', ".", features[i])
    features[i] <- gsub('\\.{1,}$', "", features[i])
    features[i] <- gsub('\\.{1,}', "_", features[i])
}

# Changing current directory to read training dataset
setwd(paste(datafiles_dir, "/train", sep = ""))

# Reading X_train.txt file to a data frame
x_train <- read.table("X_train.txt", col.names = features)
# Reading associated subject file
subject_train <- read.table("subject_train.txt", header = FALSE, col.names = "subject")

# Reading associated activity file and joining with activities vector previously created
y_train <- read.table("y_train.txt", header = FALSE, col.names = "activity_id")
y_train <- join(y_train, activities)

# Merging horizontally subject, activities and measures  
y_train <- cbind(subject_train, y_train)
y_train <- cbind(y_train, x_train)

# Changing current directory to read test dataset
setwd(paste(datafiles_dir, "/test", sep = ""))

# Reading X_test.txt file to a data frame
x_test <- read.table("X_test.txt", col.names = features)
# Reading associated subject file
subject_test <- read.table("subject_test.txt", header = FALSE, col.names = "subject")

# Reading associated activity file and joining with activities vector previously created
y_test <- read.table("y_test.txt", header = FALSE, col.names = "activity_id")
y_test <- join(y_test, activities)

# Merging horizontally subject, activities and measures  
y_test <- cbind(subject_test, y_test)
y_test <- cbind(y_test, x_test)

# Merging vertically training and test datasets
tidy_data <- merge(y_train, y_test, all = TRUE, sort = FALSE)
# Using previously created "tidy_data_column_list" vector to subset tidy_data and eliminate undesireable columns
tidy_data <- tidy_data[, tidy_data_column_list]

# Using dplyr functions to create the second (and final) tidy dataset
second_tidy_data <- tidy_data %>% group_by(subject_activity = paste(subject, activity_name, sep = "-"))
second_tidy_data <- second_tidy_data %>% summarise_each(funs(mean))

# The following statement gives final shape to dataset (eliminating subject_activity colum and restoring activity_name 
# that was damaged by mean calculation)
second_tidy_data <- cbind(join(second_tidy_data[, 2:3], activities), second_tidy_data[, 5:ncol(second_tidy_data)])

setwd(script_dir)

# Writing result to a text file as requested
write.table(second_tidy_data, file = "tidy_data_set.txt", row.names = FALSE)