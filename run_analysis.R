## Read the train data 
Train_Data_Set <- read.table("./proj_data/train/X_train.txt")
## Check the dimension of train data 
dim(Train_Data_Set) 
## Read the label for train data
Train_Data_Set_Label <- read.table("./proj_data/train/y_train.txt")
## Read table train subjects
Train_Subject <- read.table("./proj_data/train/subject_train.txt")
## Read test data set
Test_Data_Set <- read.table("./proj_data/test/X_test.txt")
## Check the dimension of the data
dim(Test_Data_Set) 
Test_Label <- read.table("./proj_data/test/y_test.txt") 
## Read the test subject 
Test_Subject <- read.table("./proj_data/test/subject_test.txt")
## Rbind
Result <- rbind(Train_Data_Set, Test_Data_Set)
## Rbind label
Final_label <- rbind(Train_Data_Set_Label, Test_Label)
## Rbind subject
Join_Subject <- rbind(Train_Subject, Test_Subject)
## Read features file
features <- read.table("./proj_data/features.txt")

Mean_Result <- grep("mean\\(\\)|std\\(\\)", features[, 2])
Result <- Result[, Mean_Result]

# remove "-" in column names 
names(Result) <- gsub("-", "", names(Result))

## Read Activity_Data_Set data
Activity_Data_Set <- read.table("./proj_data/activity_labels.txt")
## update case to lower case
Activity_Data_Set[, 2] <- tolower(gsub("_", "", Activity_Data_Set[, 2]))
activity_Label <- Activity_Data_Set[Final_label[, 1], 2]
Final_label[, 1] <- activity_Label
names(Final_label) <- "Activity"

## label the data set
names(joinSubject) <- "subject"
Final_Data <- cbind(Join_Subject, Final_label, Result)
## Write the final tidy data set output
write.table(Final_Data, "tidy_data.txt") 

