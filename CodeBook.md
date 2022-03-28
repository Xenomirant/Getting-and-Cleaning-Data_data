# Code Book

This code book summarizes the resulting data fields in `output_data.txt`.

## Identifiers

* `subject` - The ID of the test subject
* `activity` - The type of activity performed when the corresponding measurements were taken

## Measurements

* timeBodyaccelerometer.mean...X                   
* timeBodyaccelerometer.mean...Y                    
* timeBodyaccelerometer.mean...Z                    
* timeGravityaccelerometer.mean...X                 
* timeGravityaccelerometer.mean...Y                 
* timeGravityaccelerometer.mean...Z                 
* timeBodyaccelerometerJerk.mean...X                
* timeBodyaccelerometerJerk.mean...Y                
* timeBodyaccelerometerJerk.mean...Z                
* timeBodygyroscope.mean...X                        
* timeBodygyroscope.mean...Y                        
* timeBodygyroscope.mean...Z                        
* timeBodygyroscopeJerk.mean...X                    
* timeBodygyroscopeJerk.mean...Y                   
* timeBodygyroscopeJerk.mean...Z                    
* timeBodyaccelerometermagnitude.mean..             
* timeGravityaccelerometermagnitude.mean..         
* timeBodyaccelerometerJerkmagnitude.mean..         
* timeBodygyroscopemagnitude.mean..                 
* timeBodygyroscopeJerkmagnitude.mean..             
* frequencyBodyaccelerometer.mean...X               
* frequencyBodyaccelerometer.mean...Y               
* frequencyBodyaccelerometer.mean...Z               
* frequencyBodyaccelerometer.meanFreq...X           
* frequencyBodyaccelerometer.meanFreq...Y           
* frequencyBodyaccelerometer.meanFreq...Z           
* frequencyBodyaccelerometerJerk.mean...X           
* frequencyBodyaccelerometerJerk.mean...Y           
* frequencyBodyaccelerometerJerk.mean...Z           
* frequencyBodyaccelerometerJerk.meanFreq...X       
* frequencyBodyaccelerometerJerk.meanFreq...Y       
* frequencyBodyaccelerometerJerk.meanFreq...Z       
* frequencyBodygyroscope.mean...X                   
* frequencyBodygyroscope.mean...Y                   
* frequencyBodygyroscope.mean...Z                   
* frequencyBodygyroscope.meanFreq...X               
* frequencyBodygyroscope.meanFreq...Y               
* frequencyBodygyroscope.meanFreq...Z               
* frequencyBodyaccelerometermagnitude.mean..        
* frequencyBodyaccelerometermagnitude.meanFreq..    
* frequencybodyaccelerometerJerkmagnitude.mean..    
* frequencybodyaccelerometerJerkmagnitude.meanFreq..
* frequencybodygyroscopemagnitude.mean..            
* frequencybodygyroscopemagnitude.meanFreq..        
* frequencybodygyroscopeJerkmagnitude.mean..        
* frequencybodygyroscopeJerkmagnitude.meanFreq..    
* angle.timeBodyaccelerometerMean.gravity.          
* angle.timeBodyaccelerometerJerkMean..gravityMean. 
* angle.timeBodygyroscopeMean.gravityMean.          
* angle.timeBodygyroscopeJerkMean.gravityMean.      
* angle.X.gravityMean.                              
* angle.Y.gravityMean.                              
* angle.Z.gravityMean.                              
* timeBodyaccelerometer.std...X                     
* timeBodyaccelerometer.std...Y                     
* timeBodyaccelerometer.std...Z                     
* timeGravityaccelerometer.std...X                  
* timeGravityaccelerometer.std...Y                  
* timeGravityaccelerometer.std...Z                  
* timeBodyaccelerometerJerk.std...X                 
* timeBodyaccelerometerJerk.std...Y                 
* timeBodyaccelerometerJerk.std...Z                 
* timeBodygyroscope.std...X                         
* timeBodygyroscope.std...Y                         
* timeBodygyroscope.std...Z                         
* timeBodygyroscopeJerk.std...X                     
* timeBodygyroscopeJerk.std...Y                     
* timeBodygyroscopeJerk.std...Z                     
* timeBodyaccelerometermagnitude.std..              
* timeGravityaccelerometermagnitude.std..           
* timeBodyaccelerometerJerkmagnitude.std..          
* timeBodygyroscopemagnitude.std..                  
* timeBodygyroscopeJerkmagnitude.std..             
* frequencyBodyaccelerometer.std...X                
* frequencyBodyaccelerometer.std...Y                
* frequencyBodyaccelerometer.std...Z                
* frequencyBodyaccelerometerJerk.std...X            
* frequencyBodyaccelerometerJerk.std...Y            
* frequencyBodyaccelerometerJerk.std...Z            
* frequencyBodygyroscope.std...X                    
* frequencyBodygyroscope.std...Y                    
* frequencyBodygyroscope.std...Z                    
* frequencyBodyaccelerometermagnitude.std..         
* frequencybodyaccelerometerJerkmagnitude.std..    
* frequencybodygyroscopemagnitude.std..            
* frequencybodygyroscopeJerkmagnitude.std..

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test