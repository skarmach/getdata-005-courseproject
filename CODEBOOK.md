---
title: "Code Book"
author: "skarmach@gmail.com"
output: html_document
---
  
This document describes the variables in the dataset in "tidydata-agg-csv.txt" and "tidydata-csv.txt" file. Both files are identical in format so the information is this document is applicable to both.
  
**activity** *[factor]*  
It describes the activity the subject was performing while the data was being recorded. It can have the following values:
  
- LAYING
- SITTING
- STANDING
- WALKING
- WALKING_DOWNSTAIRS
- WALKING_UPSTAIRS
  
**subject** *[factor]*  
It is the numeric code identifying each of the 30 subjects. It is a sequencial list from 1 to 30.
  
**feature variables** *[numeric]*  
This dataset includes only the mean() and std() features. Features are the types of measures that are collected from the smart devices during this experiment. Here is the list of included features:
  
```
 [1] "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
 [3] "tBodyAcc-mean()-Z"           "tGravityAcc-mean()-X"       
 [5] "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"       
 [7] "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
 [9] "tBodyAccJerk-mean()-Z"       "tBodyGyro-mean()-X"         
[11] "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"         
[13] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
[15] "tBodyGyroJerk-mean()-Z"      "tBodyAccMag-mean()"         
[17] "tGravityAccMag-mean()"       "tBodyAccJerkMag-mean()"     
[19] "tBodyGyroMag-mean()"         "tBodyGyroJerkMag-mean()"    
[21] "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[23] "fBodyAcc-mean()-Z"           "fBodyAccJerk-mean()-X"      
[25] "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"      
[27] "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[29] "fBodyGyro-mean()-Z"          "fBodyAccMag-mean()"         
[31] "fBodyBodyAccJerkMag-mean()"  "fBodyBodyGyroMag-mean()"    
[33] "fBodyBodyGyroJerkMag-mean()" "tBodyAcc-std()-X"           
[35] "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
[37] "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"        
[39] "tGravityAcc-std()-Z"         "tBodyAccJerk-std()-X"       
[41] "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
[43] "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"          
[45] "tBodyGyro-std()-Z"           "tBodyGyroJerk-std()-X"      
[47] "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[49] "tBodyAccMag-std()"           "tGravityAccMag-std()"       
[51] "tBodyAccJerkMag-std()"       "tBodyGyroMag-std()"         
[53] "tBodyGyroJerkMag-std()"      "fBodyAcc-std()-X"           
[55] "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
[57] "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"       
[59] "fBodyAccJerk-std()-Z"        "fBodyGyro-std()-X"          
[61] "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
[63] "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-std()"  
[65] "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-std()"
```
  
*Please refer to the "features.info" file for description of each type of feature.*
  