## Code Book

## Source

source <-  Human Activity Recognition Using Smartphones Data Set.

Full description <- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

project: Data <- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Steps

1 Download zip file
2 unzip zip files
3 load all test and training text files into R
4 Merge all data tables into one combined table
5 load features and select only the mean and std columns
6 Select only mean and std columns from the Comnbined table
7 Load Activy names and substitute numbers with names
8 Rename first two columns to subject and Activity
9 Clean label names
10 Create nedw table after grouping by subject and activity and aggregating by calculating the mean,
11 Write the final table to text file


## Variables
------------------------------------------------------------------------------------------------------
## Loading text files:
## Training:
 trainingX,trainingY,trainingsubject (load training files)

## Testing:
testingX,testingY,testingsubject (load testing files)

## Features:
features

## Activity:
ActivityName
---------------------------------------------------------------------------------------------------------
## Combining  text files:
X,Y, Subject 
Combineddata (Final combined table binding X,Y,Subject)
------------------------------------------------------------------------------------------------------------
## Selectiong only STD and mean data:

featuresMeanSTD ( Select features that have mean and std)
finalTable ( select subject and activity columnmean and std columns ,  from Combineddata variable)

----------------------------------------------------------------------------------------------------------

## Clean table to be written to file:
CleanFinalData



## The variables in this dataset are as follows:

Identifiers:
subject	
activity	

Measurements:
timeBodyAccelerometermeanX	
timeBodyAccelerometermeanY	
timeBodyAccelerometermeanZ	
timeBodyAccelerometerstdX	
timeBodyAccelerometerstdY	
timeBodyAccelerometerstdZ	
timeGravityAccelerometermeanX	
timeGravityAccelerometermeanY	
timeGravityAccelerometermeanZ	
timeGravityAccelerometerstdX	
timeGravityAccelerometerstdY	
timeGravityAccelerometerstdZ	
timeBodyAccelerometerJerkmeanX	
timeBodyAccelerometerJerkmeanY	
timeBodyAccelerometerJerkmeanZ	
timeBodyAccelerometerJerkstdX	
timeBodyAccelerometerJerkstdY	
timeBodyAccelerometerJerkstdZ	
timeBodyGyroscopemeanX	
timeBodyGyroscopemeanY	
timeBodyGyroscopemeanZ	
timeBodyGyroscopestdX	
timeBodyGyroscopestdY	
timeBodyGyroscopestdZ	
timeBodyGyroscopeJerkmeanX	
timeBodyGyroscopeJerkmeanY	
timeBodyGyroscopeJerkmeanZ	
timeBodyGyroscopeJerkstdX	
timeBodyGyroscopeJerkstdY	
timeBodyGyroscopeJerkstdZ	
timeBodyAccelerometerMagnitudemean	
timeBodyAccelerometerMagnitudestd	
timeGravityAccelerometerMagnitudemean	
timeGravityAccelerometerMagnitudestd	
timeBodyAccelerometerJerkMagnitudemean	
timeBodyAccelerometerJerkMagnitudestd	
timeBodyGyroscopeMagnitudemean	
timeBodyGyroscopeMagnitudestd	
timeBodyGyroscopeJerkMagnitudemean	
timeBodyGyroscopeJerkMagnitudestd	
frequencyBodyAccelerometermeanX	
frequencyBodyAccelerometermeanY	
frequencyBodyAccelerometermeanZ	
frequencyBodyAccelerometerstdX	
frequencyBodyAccelerometerstdY	
frequencyBodyAccelerometerstdZ	
frequencyBodyAccelerometerJerkmeanX	
frequencyBodyAccelerometerJerkmeanY	
frequencyBodyAccelerometerJerkmeanZ	
frequencyBodyAccelerometerJerkstdX	
frequencyBodyAccelerometerJerkstdY	
frequencyBodyAccelerometerJerkstdZ	
frequencyBodyGyroscopemeanX	
frequencyBodyGyroscopemeanY	
frequencyBodyGyroscopemeanZ	
frequencyBodyGyroscopestdX	
frequencyBodyGyroscopestdY	
frequencyBodyGyroscopestdZ	
frequencyBodyAccelerometerMagnitudemean	
frequencyBodyAccelerometerMagnitudestd	
frequencyBodyAccelerometerJerkMagnitudemean	
frequencyBodyAccelerometerJerkMagnitudestd	
frequencyBodyGyroscopeMagnitudemean	
frequencyBodyGyroscopeMagnitudestd	
frequencyBodyGyroscopeJerkMagnitudemean
frequencyBodyGyroscopeJerkMagnitudestd	
						
Activity Labels:
1 Walking
2 Walking upstairs
3 Walking downstairs
4 Sitting
5 Standing
6 Laying
