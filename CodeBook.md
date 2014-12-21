---
title: "CodeBook"
author: "Amit Sanghi"
date: "Sunday, December 21, 2014"
output: html_document
---
## CodeBook ##

**This file contains the data getting and cleaning process.**
One of the most exciting areas in all of data science right now is wearable computing.
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most
advanced algorithms to attract new users. The data linked to from the course website represent data
collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available
at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity_Data_Set+Recognition+Using+Smartphones

The data for the project is available at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The run_analysis.R script contains the steps to clean the data:

*1. Read X_train.txt, y_train.txt and subject_train.txt from the "./data/train" folder and store them in Train_Data_Set, Train_Data_Set_Label and Train_Subject variables.

*2. Read X_test.txt, y_test.txt and subject_test.txt from the "./data/test" folder and store them in Test_Data_Set, testLabel and Test_Subject variables.

*3. Concatenate Test_Data_Set to Train_Data_Set..

*4. Concatenate testLabel to Train_Data_Set_Label.

*5. Concatenate Test_Subject to Train_Subject.

*6. Read the features.txt file from the "/data" folder and store the data in a variable called features. Here we only read Mean and Standard deviation. Use grep.

*7. Remove "-" symbols in the names.

*8. Read the activity_labels.txt file from the "./data"" folder and store the data in a variable Activity_Data_Set.

*9. Update Activity_Data_Set names 2 column .All names to lower cases. 

*10. Transform the values of Final_label according to the Activity_Data_Set data frame.

*11. column bind follwing (Join_Subject, joinLabel,Result) to get Final_Data. 

*12. Write the Final_Data to tidy_data.txt file.
