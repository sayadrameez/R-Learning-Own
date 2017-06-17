pollutantmean <- function(directory,pollutant,id=1:322){
  for(i in id){
    hw1_df <- read.csv(paste(directory,formatC(id[i],width = 3,flag="0") ,
                         ".csv",sep = ""))
    print(!is.na(hw1_df[,pollutant]))
    #print(tail(hw1_df[,!is.na(hw1_df[,pollutant])]))
    #print(hw1_df[,!is.na(hw1_df[,2])])
  }
}

pollutantmean("C:/Coursera/specdata/","sulfate",1:10)

##