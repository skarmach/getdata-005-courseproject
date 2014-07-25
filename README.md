---
title: "getdata-005 Course Project"
author: "skarmach@gmail.com"
date: "Friday, July 25, 2014"
output: html_document
---

This repository contains R code and data files submission for getdata-005 Course project. Here is the description of each file:

###run_analysis.R
This is the script that reads raw files, cleans and organizes data and writes the clean data out to a 'txt' file called "tidydata-agg-csv.txt".  The written data is in CSV format. It can be read with the following command:
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

###features.info
It describes the features for with data is collected. Each feature appears as a column in the data file.
