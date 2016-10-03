#  The "Human Activity Recognition Using Smartphones" dataset was created by: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory DITEN - Università degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. activityrecognition@smartlab.ws www.smartlab.ws

This original datasets provide the following information for both a training dataset and a test dataset:

    Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
    Triaxial Angular velocity from the gyroscope.
    A 561-feature vector with time and frequency domain variables.
    Its activity label.
    An identifier of the subject who carried out the experiment.

## Steps to clean the data.


# Download the zip file , unzip and create a single table from training and the test text files. Select only details for mean and STD and then substitute activity numbers with activity names.Rename the  Labels better . Group Values by Subject and Activity and calculate the means

## Download zip file https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## Unzip zip file
## Read Files
## Combine all tables
## Load Features Table
## Extract only the columns that contain mean or std information
## load activity name
##  replace factor numbers  with  the activity names
## scrub  label names
## Group data by Subject and Activity and find mean 
## Write to a text file




