#Code Book

The resulting "TidyData.txt" data file contains 81 columns. All columns except subject and activity represents the average of these measurement for
 each subject for a specific activity. This code book describes the resulting data fields in TidyData.txt.

## Data Fieldes

1. subject - (integer) This is ID for each subject observed.   
2. activity - The type of activity performed when the corresponding measurements were taken.     
   * value 1 means WALKING : subject was walking during the test   
   * value 2 means WALKING_UPSTAIRS : subject was walking up a staircase during the test   
   * value 3 means WALKING_DOWNSTAIRS : subject was walking down a staircase during the test   
   * value 4 means SITTING : subject was sitting during the test   
   * value 5 means STANDING : subject was standing during the test   
   * value 6 means LAYING : subject was laying down during the test   

The following fields are average measurements for each subject on a specific activity
3. TimeBodyAccelerometerMean-X                              
4. TimeBodyAccelerometerMean-Y                               
5. TimeBodyAccelerometerMean-Z                               
6. TimeBodyAccelerometerStdandardDeviation-X     
7. TimeBodyAccelerometerStdandardDeviation-Y                
8. TimeBodyAccelerometerStdandardDeviation-Z                
9. TimeGravityAccelerometerMean-X                          
10. TimeGravityAccelerometerMean-Y                            
11. TimeGravityAccelerometerMean-Z                            
12. TimeGravityAccelerometerStdandardDeviation -X             
13. TimeGravityAccelerometerStdandardDeviation -Y             
14. TimeGravityAccelerometerStdandardDeviation -Z             
15. TimeBodyAccelerometerJerkMean-X                           
16. TimeBodyAccelerometerJerkMean-Y                           
17. TimeBodyAccelerometerJerkMean-Z                           
18. TimeBodyAccelerometerJerkStdandardDeviation -X            
19. TimeBodyAccelerometerJerkStdandardDeviation -Y            
20. TimeBodyAccelerometerJerkStdandardDeviation -Z            
21. TimeBodyGyroscopeMean-X                                   
22. TimeBodyGyroscopeMean-Y                                   
23. TimeBodyGyroscopeMean-Z                                   
24. TimeBodyGyroscopeStdandardDeviation -X                    
25. TimeBodyGyroscopeStdandardDeviation -Y                    
26. TimeBodyGyroscopeStdandardDeviation -Z                    
27. TimeBodyGyroscopeJerkMean-X                               
28. TimeBodyGyroscopeJerkMean-Y                               
29. TimeBodyGyroscopeJerkMean-Z                               
30. TimeBodyGyroscopeJerkStdandardDeviation -X                
31. TimeBodyGyroscopeJerkStdandardDeviation -Y                
32. TimeBodyGyroscopeJerkStdandardDeviation -Z                
33. TimeBodyAccelerometerMagnitudeMean                        
34. TimeBodyAccelerometerMagnitudeStdandardDeviation         
35. TimeGravityAccelerometerMagnitudeMean                     
36. TimeGravityAccelerometerMagnitudeStdandardDeviation      
37. TimeBodyAccelerometerJerkMagnitudeMean                    
38. TimeBodyAccelerometerJerkMagnitudeStdandardDeviation     
39. TimeBodyGyroscopeMagnitudeMean                            
40. TimeBodyGyroscopeMagnitudeStdandardDeviation             
41. TimeBodyGyroscopeJerkMagnitudeMean                        
42. TimeBodyGyroscopeJerkMagnitudeStdandardDeviation         
43. FrequencyBodyAccelerometerMean-X                          
44. FrequencyBodyAccelerometerMean-Y                         
45. FrequencyBodyAccelerometerMean-Z                         
46. FrequencyBodyAccelerometerStdandardDeviation -X           
47. FrequencyBodyAccelerometerStdandardDeviation -Y          
48. FrequencyBodyAccelerometerStdandardDeviation -Z           
49. FrequencyBodyAccelerometerMeanFreq-X                      
50. FrequencyBodyAccelerometerMeanFreq-Y                      
51. FrequencyBodyAccelerometerMeanFreq-Z                      
52. FrequencyBodyAccelerometerJerkMean-X                      
53. FrequencyBodyAccelerometerJerkMean-Y                      
54. FrequencyBodyAccelerometerJerkMean-Z                      
55. FrequencyBodyAccelerometerJerkStdandardDeviation -X       
56. FrequencyBodyAccelerometerJerkStdandardDeviation -Y       
57. FrequencyBodyAccelerometerJerkStdandardDeviation -Z       
58. FrequencyBodyAccelerometerJerkMeanFreq-X                  
59. FrequencyBodyAccelerometerJerkMeanFreq-Y                  
60. FrequencyBodyAccelerometerJerkMeanFreq-Z                  
61. FrequencyBodyGyroscopeMean-X                              
62. FrequencyBodyGyroscopeMean-Y                              
63. FrequencyBodyGyroscopeMean-Z                              
64. FrequencyBodyGyroscopeStdandardDeviation -X               
65. FrequencyBodyGyroscopeStdandardDeviation -Y               
66. FrequencyBodyGyroscopeStdandardDeviation -Z               
67. FrequencyBodyGyroscopeMeanFreq-X                          
68. FrequencyBodyGyroscopeMeanFreq-Y                          
69. FrequencyBodyGyroscopeMeanFreq-Z                          
70. FrequencyBodyAccelerometerMagnitudeMean                   
71. FrequencyBodyAccelerometerMagnitudeStdandardDeviation    
72. FrequencyBodyAccelerometerMagnitudeMeanFreq               
73. FrequencyBodyAccelerometerJerkMagnitudeMean               
74. FrequencyBodyAccelerometerJerkMagnitudeStdandardDeviation      
75. FrequencyBodyAccelerometerJerkMagnitudeMeanFreq           
76. FrequencyBodyGyroscopeMagnitudeMean                       
77. FrequencyBodyGyroscopeMagnitudeStdandardDeviation        
78. FrequencyBodyGyroscopeMagnitudeMeanFreq                   
79. FrequencyBodyGyroscopeJerkMagnitudeMean                   
80. FrequencyBodyGyroscopeJerkMagnitudeStdandardDeviation     
81. FrequencyBodyGyroscopeJerkMagnitudeMeanFreq   


Working procedure to create this data:
1. Fisrt Downloaded the data from given URL.     
2. Read activities and features from file.      
3. Make the feature names nice by string replace.        
4. Read all data related to training and construct a data frame by rbind.   
5. Read all data related to test and construct a data frame by rbind.    
6. Marge test and training data and assign column names for marged data.   
7. Create factor for subject and activity columns.    
8. Compute mean for each measurements by subject and activity.    
9. finally, Write data into file.   


