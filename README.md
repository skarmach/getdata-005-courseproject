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

###tidydata-csv.txt
This is the clean data file with data still at the most granular form.

###tidydata-agg-csv.txt
This is the clean data file with data aggregated (mean) by subject and activity.



