This repository contains R code and data files submission for getdata-005 Course project. The original dataset is not included in this repository. It is available from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Here is the list and description of files include with this dataset:

###README.md
It is the document that you are reading now.

###run_analysis.R
This script reads files with:
  
1. training and test data from the accelerometers and gyroscopes from wearable fitness devices.
2. data mapping certain codes to their descriptive labels 
  
The script tidies the data up for analysis by:
  
1. adding in descriptive labels
2. retaining only desired measures (means and stds)
3. merging training and test data
4. converting categorical fields to factors
  
The output of this script are two 'txt' files called "tidydata-csv.txt" [data in original granularity] and "tidydata-agg-csv.txt" [measures aggregated as averages of activity and subject]. The written data is in CSV format. It can be read with the following command:
```
DAT <- read.csv("tidydata-agg-csv.txt")
```

The code has a ```setwd()``` at the top to set my working directory. You may need to change that to your working directory if you want to check the code out. This script requires that the samsung data be present in the same directory. You can simply unzip the downloaded data into the working directory and it will create a directory there called "UCI HAR Dataset". This script will simply work with this directory.

###tidydata-csv.txt
This is the clean data file with data still at the most granular form.

###tidydata-agg-csv.txt
This is the clean data file with data aggregated (mean) by subject and activity.

###CODEBOOK.md
This is the description of variables in the data files. It refers to few of the files (listed below) that come as part of the original downloaded. This is done to avoid duplication of effort.

###README.txt [from original dataset]
This is the README file from the original dataset. It is included here to provide ample background to the original dataset.

###features.info [from original dataset]
It describes the features for which data is collected. Each feature appears as a column in the data files.

###features.txt [from original dataset]
It lists all the feature variables in the original dataset. Please note that the dataset produced by this project retains only the "mean" and "std" class of variables.

