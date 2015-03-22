### Codebook

## Data Sources

The data for this analysis can be found here: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

After extracting this data, using the run_analysis() function on this data will construct a data set which reflects the information outlined in this code book.

Information on running this script can be found on the README.md file. 

For more details on the data in genera, please refer to the README.txt included with the data, as well as the following website: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Transformations to Arrive at Data Set

Each step in the process is outlined in the run_analysis.R script in the comments.

The substantive differences to note between the original data set and the the tidying process is that: 

1. The original data was split between test data and trial data.
2. There exist several other measures beyond mean and standard deviation in the original data, which are not represented in the tidy data set.
3. Each data point in this set is an average of several readings. 

## Variable Explanations

# Subject

The study involved thirty different subjects, numbered 1 through 30. 

# Activity

Each subject performed six different activities: 

- LAYING
- SITTING
- STANDING
- WALKING
- WALKING_DOWNSTAIRS
- WALKING_UPSTAIRS

# Data

The remaining columns all represent the average reading from an accelerometer and gyroscope. For more detailed information, please refer to the features_info.txt and README.txt files, which are included with the dataset. 

Generally speaking, the variable names are composed in order as follows:

- The first character of each, 't' or 'f' refers to the column being a time or frequency domain signals, respectively. 
- Body or Gravity refers to the source of the acceleration signals
- Acc or Gyro identifies whether the signal is from an accelerometer or gyroscope
- Mag and Jerk signals
- "-mean()", "-std()", and "-meanFreq()" variables estimated from these signals. 
- '-X', '-Y', or '-Z' indicates the direction of the signal. 

The list of all variable names are as follows: 
(numbered by default column number)

3 tBodyAcc-mean()-Z
4 tBodyAcc-mean()-Y 
5 tBodyAcc-mean()-Z 
6 tBodyAcc-std()-X 
7 tBodyAcc-std()-Y 
8 tBodyAcc-std()-Z 
9 tGravityAcc-mean()-X 
10 tGravityAcc-mean()-Y 
11 tGravityAcc-mean()-Z 
12 tGravityAcc-std()-X 
13 tGravityAcc-std()-Y 
14 tGravityAcc-std()-Z 
15 tBodyAccJerk-mean()-X 
16 tBodyAccJerk-mean()-Y 
17 tBodyAccJerk-mean()-Z 
18 tBodyAccJerk-std()-X 
19 tBodyAccJerk-std()-Y 
20 tBodyAccJerk-std()-Z 
21 tBodyGyro-mean()-X 
22 tBodyGyro-mean()-Y 
23 tBodyGyro-mean()-Z 
24 tBodyGyro-std()-X 
25 tBodyGyro-std()-Y 
26 tBodyGyro-std()-Z 
27 tBodyGyroJerk-mean()-X 
28 tBodyGyroJerk-mean()-Y 
29 tBodyGyroJerk-mean()-Z 
30 tBodyGyroJerk-std()-X 
31 tBodyGyroJerk-std()-Y 
32 tBodyGyroJerk-std()-Z 
33 tBodyAccMag-mean() 
34 tBodyAccMag-std() 
35 tGravityAccMag-mean() 
36 tGravityAccMag-std() 
37 tBodyAccJerkMag-mean() 
38 tBodyAccJerkMag-std() 
39 tBodyGyroMag-mean() 
40 tBodyGyroMag-std() 
41 tBodyGyroJerkMag-mean() 
42 tBodyGyroJerkMag-std() 
43 fBodyAcc-mean()-X 
44 fBodyAcc-mean()-Y 
45 fBodyAcc-mean()-Z 
46 fBodyAcc-std()-X 
47 fBodyAcc-std()-Y 
48 fBodyAcc-std()-Z 
49 fBodyAcc-meanFreq()-X 
50 fBodyAcc-meanFreq()-Y 
51 fBodyAcc-meanFreq()-Z 
52 fBodyAccJerk-mean()-X 
53 fBodyAccJerk-mean()-Y 
54 fBodyAccJerk-mean()-Z 
55 fBodyAccJerk-std()-X 
56 fBodyAccJerk-std()-Y 
57 fBodyAccJerk-std()-Z 
58 fBodyAccJerk-meanFreq()-X 
59 fBodyAccJerk-meanFreq()-Y 
60 fBodyAccJerk-meanFreq()-Z 
61 fBodyGyro-mean()-X 
62 fBodyGyro-mean()-Y 
63 fBodyGyro-mean()-Z 
64 fBodyGyro-std()-X 
65 fBodyGyro-std()-Y 
66 fBodyGyro-std()-Z 
67 fBodyGyro-meanFreq()-X 
68 fBodyGyro-meanFreq()-Y 
69 fBodyGyro-meanFreq()-Z 
70 fBodyAccMag-mean() 
71 fBodyAccMag-std() 
72 fBodyAccMag-meanFreq() 
73 fBodyBodyAccJerkMag-mean() 
74 fBodyBodyAccJerkMag-std() 
75 fBodyBodyAccJerkMag-meanFreq() 
76 fBodyBodyGyroMag-mean() 
77 fBodyBodyGyroMag-std() 
78 fBodyBodyGyroMag-meanFreq() 
79 fBodyBodyGyroJerkMag-mean() 
80 fBodyBodyGyroJerkMag-std() 
81 fBodyBodyGyroJerkMag-meanFreq() 


