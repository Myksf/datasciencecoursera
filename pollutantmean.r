pollutantmean <- function(directory, pollutant, id = 1:332) { 
        ## 'directory' is a character vector of length1 indicating
        ##  the location of the CSV files. ### I set up a foldier in my working
        ###  directory called "specdata', which held all of the .csv files.
        
        ##  "pollutant' is a character vecotry of length 1 indicating the name of 
        ##  pollutant form which the mean is calculated, being either 'sulfate' or
        ##  'nitrate'.
        
        ##  'id' is and interger vector indicating the monitor ID number being used.
        
        ##  Pollutantmean will return the pollutant across all the monitors user listed
        ##  in the "id' vector while ignoring NA values.
        
        ### I rounded the results in order to match the test sets.
   allFiles <- list.files(path = directory, pattern="*.csv", full.names = TRUE) 
        ### 'allFiles' is a character that will hold each of the .csv files. 
   DataReady <- data.frame() 
        ###  is a data frame that will be used to data tables that will be read in 
        ###  the for loops 
   for (i in id) { 
        ### the loop is designed to continue from Beginning:End
             DataReady <- rbind(DataReady, read.csv(allFiles[i]))   
        ### Data is then read from each of the .csv files and bound in tables into
        ### 'DataReady"
               } 
   
   if (pollutant == 'sulfate') { 
        ###  "if the pollutant selected is sulfate, the mean is taken with all Na being 
        ###  ignored and rounding to three digits.
     round(mean(DataReady$sulfate, na.rm = TRUE), digits = 3) 
 
             } 
   
   else if (pollutant == 'nitrate') { 
        ###  "if the pollutant selected is sulfate, the mean is taken with all Na being 
        ###  ignored and rounding to three digits.     
     round(mean(DataReady$nitrate, na.rm = TRUE), digits = 3) 
  
            } 
    
} 
