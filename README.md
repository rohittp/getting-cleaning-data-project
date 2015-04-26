---
title: "README"
author: "RP"
date: "April 26, 2015"
output: html_document
---

This README document describes how the script run_analysis.R works.

The script uses the data set dowloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

It reads the data files file from the working directory. The downloaded files are read from directory "UCI HAR Dataset" in the working directory. This directory is created when you download the above data set. Keep this directory in the working directory.

The output of the script results in a tidy data set of 180X81 dimension. This data set is written as a text file "tidy_data_wide.txt" in the current working directory.

To read the file into a data frame, you will need to use the read.table() command using header=TRUE.
_____________________________________________________________________
The downloaded dataset has 2 sub-sets under test and training directory. This script does not consider "Inertial Signal"" as part of this data analysis. The following data sets have been considered.

Test Data set
1. subject_test.txt
2. X_test.txt
3. y_test.txt

Training Data set
1. subject_train.txt
2. X_train
3. y_train

The first step of the script is to create a complete data set of the relevant features:
1- It combines the featues subject_test.txt & subject_train.txt

2- It extracts only the std & mean features column in this data set.

3- It does not consider angle variables.Even though these variables have          
mean in the name, these are not mean or std value. These variables     
are just using mean values to calculate angle variable.

4- Above extraction results in including 79 feature variables in the data set. 

5- It mutates actual activity names in the y_test data set. This step is required to replace activity_id with activity names.

6- It transforms the activity label to a meanigful name getting rid of any special characters.

7- It finally joins the subject, activity and feature data to complete the data set.

8- The variable names are transformed to make them meaningful removing any special characters.

Second step is to summarize the data resulting in tidy data set in wide form.  

1- The data is summarized across all the features by calculating the mean of all the readings for each subject and activity.

E.g. For subject 1 & Activity= standing, mean of all the observations have been calculated for each variable

2. Since there are 81 variables(79 features and subjectID & activityLabel). It results in a wide data set with 81 columns.

3. Each subject perform each of the activity. This results into 6*30=180 obserations.

4. The final data set has 180 observations and 81 variables (180X81)