# Getting-and-Cleaning-Data-Course-Project

This project contains some data gathering and manipulation task. The data given for this project is collected from an experiment. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope. The data from this experiment is the source of this project.   
The given tasks on this dataset are following:    
1. Merges the training and the test sets to create one data set.     
2. Extracts only the measurements on the mean and standard deviation for each measurement.     
3. Uses descriptive activity names to name the activities in the data set.        
4. Appropriately labels the data set with descriptive variable names.       
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.         

##After completing these task I have submitted the Analysis File, Code Book and Tidy Data file in this repo. These file are
* run_analysis.R - this file contains r code for this analysis.
* CodeBook.MD - this file describes data fields and working process of this analysis.
* TidyData.txt - this file containf the final data generated after analysis.


##The run_analysis.R file follow these steps to complete the analysis:      
1. Fisrt Downloaded the data from given URL.    
2. Read activities and features from file.         
3. Make the feature names nice by string replace.                         
4. Read all data related to training and construct a data frame by rbind.       
5. Read all data related to test and construct a data frame by rbind.     
6. Marge test and training data and assign column names for marged data.         
7. Create factor for subject and activity columns.                
8. Compute mean for each measurements by subject and activity.         
9. finally, Write data into file.            

