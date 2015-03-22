run_analysis <- function(dir="./"){
    
  # training and test subjects
  # this will be the id for the x axis

  con <- file(paste(dir, "train/subject_train.txt", sep=""))
  train_subjects <- as.numeric((readLines(con)))
  close(con)
  
  con <- file(paste(dir, "test/subject_test.txt", sep=""))
  test_subjects <- as.numeric((readLines(con)))
  close(con)
  
  # Getting Y_test and Y_train
  
  con <- file(paste(dir, "train/y_train.txt", sep=""))
  y_train <- readLines(con)
  close(con)
  
  con <- file(paste(dir, "test/y_test.txt", sep=""))
  y_test <- readLines(con)
  close(con)
  
  # getting and parsing the activity names. 
  
  con <- file(paste(dir, "activity_labels.txt", sep=""))
  activity_labels <- readLines(con);
  close(con)
  activity_labels <- sub("[1-6] ", "", activity_labels)
  
  # for renaming the numerical labels to descriptive labels
  label_maker <- function(numberChar, labels){
    labels[as.numeric(numberChar)]
  }
  y_train <- sapply(y_train, label_maker, activity_labels)
  y_test <- sapply(y_test, label_maker, activity_labels)
  
  # Build data frames of subjects and Y_test/Y_train
  
  trainDF <- data.frame(subject=train_subjects, activity=y_train)
  testDF <- data.frame(subject=test_subjects, activity=y_test)
  
  
  
  # Connecting Features with X_train and X_test
  
  con <- file(paste(dir, "features.txt", sep=""))
  features <- readLines(con)
  close(con)
  
  con <- file(paste(dir, "train/X_train.txt", sep=""))
  X_train <- readLines(con)
  close(con)
  
  con <- file(paste(dir, "test/X_test.txt", sep=""))
  X_test <- readLines(con)
  close(con)
  
  #remove numbers before features names
  features <- sub("[0-9]+ +", "", features)
  
  #put xTrain and xTestDF data into data frames
  #the first column
  xTrainDF <- data.frame(t(sapply(strsplit(X_train, "\\ +"), c)))[2:562]
  xTestDF <- data.frame(t(sapply(strsplit(X_test, "\\ +"), c)))[2:562]
  
  #add column names to these data frames
  colnames(xTrainDF) <- features
  colnames(xTestDF) <- features
  
  
  #column-bind the two data frames
  trainDF <- cbind(trainDF, xTrainDF)
  testDF <- cbind(testDF, xTestDF)
  
  #row-bind the two data frames
  mainDF <- rbind(trainDF, testDF)
  
  test <- mainDF <- mainDF[,c(c(1, 2), grep("mean()|std()", colnames(mainDF)))]

  #convert factor to numeric
  mainDF[3:81] <- sapply(mainDF[3:81], as.character)
  mainDF[3:81] <- sapply(mainDF[3:81], as.numeric)
  
  # melt and and dcast the data frame to find the mean of each variable for a given subject and activity.
  mainDF <- melt(mainDF, id=1:2, measure.vars=3:81);
  mainDF <- dcast(mainDF, subject + activity ~ variable, mean)
  
  # order the data frame by subject and activity.
  mainDF[with(mainDF, order(subject, activity)),]
  
}