This codebook has 2 sections

Section 1- Describes the design considerations and decision taken for the         
           project.
           
section 2- Gives describes the data dictionary. It describes each     
           variable along with their units.           


                Section 1 - DESIGN CONSIDERATION
                
This project uses the data set generated as part of the study for Human Activity Recognition using smart phones version 1.0. It uses data set downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

This dataset has 2 sub-sets under test and training directory. This project does not consider Inertial Signal as part of this data analysis. The following data sets have been considered.

Test Data set
1. subject_test.txt
2. X_test.txt
3. y_test.txt

Training Data set
1. subject_train.txt
2. X_train
3. y_train

The first step of the project was to create a complete data set of the relevant features:
1- It combines the featues subject_test.txt & subject_train.txt
2- It extracts only the std & mean features column in this data set.
3- It does not consider angle variables.Even though these variables have          
mean in the name, these are not mean or std value. These variables     
are just using mean values to calculate angle variable.
4- Above extraction results in including 79 feature variables in the data set. 
5- It mutates actual activity names in the y_test data set. This step is required to replace activity_id with activity names.
6- It transforms the activity label to a meanigful name getting rid of any special characters.
7- It finally joins the subject, activity and feature data to complete the data set.
8- The feature names are transformed to make them meaningful removing any special characters.

Second step was to summarize the data into a wide form resulting in tidy data set in wide form.  

1- The data is summarized across all the features by calculating the mean of all the readings for each subject and activity.

E.g. For subject 1 & Activity= standing, mean of all the observations have been calculated for each variable

2. Since there are 81 variables(79 features and subjectID & activityLabel). It results in a wide data set with 81 columns.

3. Each subject perform each of the activity. This results into 6*30=180 obserations.

4. The final data set has 180 observations and 81 variables (180X81)




                 Section 2-  DATA DICTIONARY

subjectId               
    Subject Identifier for 30 volunteers within an age bracket of 19-48   
    years who performed the activity for each window sample.
                        1..30   .Integer identifier of each subject
                        
activityLabel           
    Represents the 6 activities performed by the subjects during the     
    experiment.
                        .Factor with 6 Levels: LAYING SITTING STANDING         
                        WALKING WALKING DOWNSTAIRS  WALKING UPSTAIRS                       
                       
                     
tBodyAccmeanX
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Body Accelaration mean readings across X axis.
                        -1..1   .Number variable 

tBodyAccmeanY
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Body Accelaration mean readings across Y axis.
                        -1..1   .Number variable      

tBodyAccmeanZ
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Body Accelaration mean readings across Z axis.
                        -1..1   .Number variable 

tBodyAccstdX
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Body Accelaration standard deviation readings across X axis.
                        -1..1   .Number variable  

tBodyAccstdY
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Body Accelaration standard deviation readings across Y axis.
                        -1..1   .Number variable 

tBodyAccstdZ
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Body Accelaration standard deviation readings across Z axis.
                        -1..1   .Number variable 

tGravityAccmeanX
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Gravity Accelaration mean readings across X axis.
                        -1..1   .Number variable  
                        
tGravityAccmeanY
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Gravity Accelaration mean readings across Y axis.
                        -1..1   .Number variable 
tGravityAccmeanZ
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Gravity Accelaration mean readings across Z axis.
                        -1..1   .Number variable 
tGravityAccstdX
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Gravity Accelaration standard deviation readings across X axis.
                        -1..1   .Number variable 
tGravityAccstdY
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Gravity Accelaration standard deviation readings across X axis.
                        -1..1   .Number variable 
tGravityAccstdZ
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Gravity Accelaration standard deviation readings across Z axis.
                        -1..1   .Number variable 
tBodyAccJerkmeanX
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body Accelaration Jerks mean readings across X axis.
                        -1..1   .Number variable 
tBodyAccJerkmeanY
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body Accelaration Jerks mean readings across Y axis.
                        -1..1   .Number variable 

tBodyAccJerkmeanZ
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body Accelaration Jerks mean readings across Z axis.
                        -1..1   .Number variable  

tBodyAccJerkstdX
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body Accelaration Jerks standard deviation readings across X         
     axis.
                        -1..1   .Number variable 
                        
tBodyAccJerkstdY
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body Accelaration Jerks standard deviation readings across Y         
     axis.
                        -1..1   .Number variable 
                        
tBodyAccJerkstdZ
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body Accelaration Jerks standard deviation readings across Z         
     axis.
                        -1..1   .Number variable 
                        
tBodyGyromeanX
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body angular velocity mean readings across X axis.
                        -1..1   .Number variable  
                        
tBodyGyromeanY
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body angular velocity mean readings across Y axis.
                        -1..1   .Number variable 
                        
tBodyGyromeanZ
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body angular velocity mean readings across Z axis.
                        -1..1   .Number variable 
                        
tBodyGyrostdX
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Body angular velocity standard deviation readings across X axis.
                        -1..1   .Number variable 
                        
tBodyGyrostdY
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Body angular velocity standard deviation readings across Y axis.
                        -1..1   .Number variable 
                        
tBodyGyrostdZ
    Summarized mean value grouped by subjectID and activityLabel for the   
    Time Body angular velocity standard deviation readings across Z axis.
                        -1..1   .Number variable 
                        
tBodyGyroJerkmeanX
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body angular velocity Jerks mean readings across X axis.
                        -1..1   .Number variable 
                        
tBodyGyroJerkmeanY
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body angular velocity Jerks mean readings across Y axis.
                        -1..1   .Number variable 
                        
tBodyGyroJerkmeanZ
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body angular velocity Jerks mean readings across Z axis.
                        -1..1   .Number variable 
                        
tBodyGyroJerkstdX
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body angular velocity Jerks standard deviation readings across          
     X axis.
                        -1..1   .Number variable  
tBodyGyroJerkstdY
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body angular velocity Jerks standard deviation readings across          
     Y axis.
                        -1..1   .Number variable 
                        
tBodyGyroJerkstdZ
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body angular velocity Jerks standard deviation readings across          
     Z axis.
                        -1..1   .Number variable 
                        
tBodyAccMagmean
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body accelaration magnitude mean readings.
                        -1..1   .Number variable 
                        
tBodyAccMagstd
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Body accelaration magnitude standard deviation readings.
                        -1..1   .Number variable 
                        
tGravityAccMagmean
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Gravitational accelaration magnitude mean readings.
                        -1..1   .Number variable 
                        
tGravityAccMagstd
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time Gravitational accelaration magnitude standard deviation     
     readings.
                        -1..1   .Number variable  
                        
tBodyAccJerkMagmean
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time body accelaration jerk magnitude mean readings.
                        -1..1   .Number variable 
                        
tBodyAccJerkMagstd
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time body accelaration jerk magnitude standard deviation readings.
                        -1..1   .Number variable 
                        
tBodyGyroMagmean
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time body angular velocity magnitude mean readings.
                        -1..1   .Number variable 
                        
tBodyGyroMagstd
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time body angular velocity magnitude standard deviation readings.
                        -1..1   .Number variable 
                        
tBodyGyroJerkMagmean
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time body angular velocity jerk magnitude mean readings.
                        -1..1   .Number variable  
                        
tBodyGyroJerkMagstd
     Summarized mean value grouped by subjectID and activityLabel for the   
     Time body angular velocity jerk magnitude standard deviation  
     readings.
                        -1..1   .Number variable 
                        
fBodyAccmeanX
    Summarized average value grouped by subjectID and activityLabel for     
    the mean of frequency domain readings of body Accelaration across X 
    axis.
                        -1..1   .Number variable 
                        
fBodyAccmeanY
    Summarized average value grouped by subjectID and activityLabel for     
    the mean of frequency domain readings of body Accelaration across Y 
    axis.
                        -1..1   .Number variable  
                        
fBodyAccmeanZ
    Summarized average value grouped by subjectID and activityLabel for     
    the mean of frequency domain readings of body Accelaration across Z 
    axis.
                        -1..1   .Number variable 
                        
fBodyAccstdX
    Summarized average value grouped by subjectID and activityLabel for     
    the standard deviation of frequency domain readings of body Accelarat    
    ion across X axis.
                        -1..1   .Number variable 
                        
fBodyAccstdY
    Summarized average value grouped by subjectID and activityLabel for     
    the standard deviation of frequency domain readings of body Accelarat    
    ion across Y axis.
                        -1..1   .Number variable 

fBodyAccstdZ
    Summarized average value grouped by subjectID and activityLabel for     
    the standard deviation of frequency domain readings of body Accelarat    
    ion across Z axis.
                        -1..1   .Number variable  
                        
fBodyAccmeanFreqX
    Summarized average value grouped by subjectID and activityLabel for     
    Weighted average of the frequency domain readings of body Accelarat    
    ion across X axis.
                        -1..1   .Number variable 
                        
fBodyAccmeanFreqY
    Summarized average value grouped by subjectID and activityLabel for     
    Weighted average of the frequency domain readings of body Accelarat    
    ion across X axis.
                        -1..1   .Number variable 
                        
fBodyAccmeanFreqZ
    Summarized average value grouped by subjectID and activityLabel for     
    Weighted average of the frequency domain readings of body Accelarat    
    ion across Z axis.
                        -1..1   .Number variable
                        
fBodyAccJerkmeanX
    Summarized average value grouped by subjectID and activityLabel for     
    the mean of frequency domain readings of body Accelarat jerks across 
    X axis.
                        -1..1   .Number variable 
                        
fBodyAccJerkmeanY
    Summarized average value grouped by subjectID and activityLabel for     
    the mean of frequency domain readings of body Accelarat jerk sacross 
    Y axis.
                        -1..1   .Number variable 
                        
fBodyAccJerkmeanZ
    Summarized average value grouped by subjectID and activityLabel for     
    the mean of frequency domain readings of body Accelarat jerks across     
    Z axis.
                        -1..1   .Number variable 
                        
fBodyAccJerkstdX
    Summarized average value grouped by subjectID and activityLabel for     
    the standard deviation of frequency domain readings of body Accelarat 
    jerks across X axis.
                        -1..1   .Number variable 
                        
fBodyAccJerkstdY
    Summarized average value grouped by subjectID and activityLabel for     
    the standard deviation of frequency domain readings of body Accelarat 
    jerks across Y axis.
                        -1..1   .Number variable 
                        
fBodyAccJerkstdZ
    Summarized average value grouped by subjectID and activityLabel for     
    the standard deviation of frequency domain readings of body Accelarat 
    jerks across Z axis.
                        -1..1   .Number variable 
                        
fBodyAccJerkmeanFreqX
    Summarized average value grouped by subjectID and activityLabel for     
    Weighted average of the frequency domain readings of body Accelarat    
    ion jerks across X axis.
                        -1..1   .Number variable 
                        
fBodyAccJerkmeanFreqY
    Summarized average value grouped by subjectID and activityLabel for     
    Weighted average of the frequency domain readings of body Accelarat    
    ion jerks across Y axis.
                        -1..1   .Number variable  
                        
fBodyAccJerkmeanFreqZ
    Summarized average value grouped by subjectID and activityLabel for     
    Weighted average of the frequency domain readings of body Accelarat    
    ion jerks across X axis.
                        -1..1   .Number variable 
                        
fBodyGyromeanX
     Summarized mean value grouped by subjectID and activityLabel for the   
     the mean of frequency domain readings of angular velocity across X      
     axis.
                        -1..1   .Number variable 
                        
fBodyGyromeanY
     Summarized mean value grouped by subjectID and activityLabel for the   
     the mean of frequency domain readings of angular velocity across Y      
     axis.
                        -1..1   .Number variable 
                        
fBodyGyromeanZ
     Summarized mean value grouped by subjectID and activityLabel for the   
     the mean of frequency domain readings of angular velocity across Z      
     axis.
                        -1..1   .Number variable 
                        
fBodyGyrostdX
     Summarized mean value grouped by subjectID and activityLabel for the   
     the standard deviation of frequency domain readings of angular      
     velocity across X axis.
                        -1..1   .Number variable 
                        
fBodyGyrostdY
     Summarized mean value grouped by subjectID and activityLabel for the   
     the standard deviation of frequency domain readings of angular      
     velocity across Y axis.
                        -1..1   .Number variable 
                        
fBodyGyrostdZ
     Summarized mean value grouped by subjectID and activityLabel for the   
     the standard deviation of frequency domain readings of angular      
     velocity across Z axis.
                        -1..1   .Number variable 
                        
fBodyGyromeanFreqX
    Summarized average value grouped by subjectID and activityLabel for     
    Weighted average of the frequency domain readings of angular velocity     
    across X axis.
                        -1..1   .Number variable 
                        
fBodyGyromeanFreqY
    Summarized average value grouped by subjectID and activityLabel for     
    Weighted average of the frequency domain readings of angular velocity     
    across Y axis.
                        -1..1   .Number variable 
                        
fBodyGyromeanFreqZ
    Summarized average value grouped by subjectID and activityLabel for     
    Weighted average of the frequency domain readings of angular velocity     
    across Z axis.
                        -1..1   .Number variable  
                        
fBodyAccMagmean
    Summarized average value grouped by subjectID and activityLabel for     
    the mean of frequency domain readings of accelaration magnitude.
                        -1..1   .Number variable  
                        
fBodyAccMagstd
    Summarized average value grouped by subjectID and activityLabel for     
    the standard deviation of frequency domain readings of accelaration 
    magnitude.
                        -1..1   .Number variable 
                        
fBodyAccMagmeanFreq
    Summarized average value grouped by subjectID and activityLabel for     
    Weighted average of the frequency domain readings of body accelation.
                        -1..1   .Number variable 
                        
fBodyBodyAccJerkMagmean
    Summarized average value grouped by subjectID and activityLabel for     
    mean of body accelaration jerk magnitude. 
                        -1..1   .Number variable 
                        
fBodyBodyAccJerkMagstd
    Summarized average value grouped by subjectID and activityLabel for     
    standard deviation of body accelaration jerk magnitude. 
                        -1..1   .Number variable 
                        
fBodyBodyAccJerkMagmeanFreq
    Summarized average value grouped by subjectID and activityLabel for     
    Weighted average of the frequency domain readings of body accelation 
    jerk magnitude.
                        -1..1   .Number variable 
                        
fBodyBodyGyroMagmean
    Summarized average value grouped by subjectID and activityLabel for     
    mean of angular velocity magnitude. 
                        -1..1   .Number variable 
                        
fBodyBodyGyroMagstd
    Summarized average value grouped by subjectID and activityLabel for     
    standard deviation of angular velocity magnitude. 
                        -1..1   .Number variable 
                        
fBodyBodyGyroMagmeanFreq
    Summarized average value grouped by subjectID and activityLabel for     
    Weighted average of mean of the frequency domain readings of angular     
    velocity magnitude.
                        -1..1   .Number variable 
                        
fBodyBodyGyroJerkMagmean
    Summarized average value grouped by subjectID and activityLabel for     
    mean of angular velocity jerk magnitude. 
                        -1..1   .Number variable 
                        
fBodyBodyGyroJerkMagstd
    Summarized average value grouped by subjectID and activityLabel for     
    standard deviation of angular velocity jerk magnitude. 
                        -1..1   .Number variable 
                        
fBodyBodyGyroJerkMagmeanFreq      
    Summarized average value grouped by subjectID and activityLabel for     
    Weighted average of mean of the frequency domain readings of angular     
    velocity jerk magnitude.
                        -1..1   .Number variable 