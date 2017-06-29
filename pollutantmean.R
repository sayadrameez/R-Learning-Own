pollutantmean <- function(directory,pollutant,id=1:332){
  dfnew <-numeric()
  print(id)
  for(i in id){
    print(paste(directory,formatC(i,width = 3,flag="0") ,
                ".csv",sep = ""))
    hw1_df <- read.csv(paste(directory,formatC(i,width = 3,flag="0") ,
                         ".csv",sep = ""))
    ##print(hw1_df[!is.na(hw1_df[[pollutant]]),pollutant])
    dfnew<- c(dfnew,hw1_df[!is.na(hw1_df[[pollutant]]),pollutant])
   # print(hw1_df[,is.na(hw1_df[,pollutant])])
    #print(!is.na(hw1_df[,pollutant]))
    #print(tail(hw1_df[,!is.na(hw1_df[,pollutant])]))
   # print(hw1_df[,is.na(hw1_df[,2])])
  }
  print(mean(dfnew))
}

complete<- function(directory,id=1:332){
  ##C:\Coursera\R-DataLearning-Own\quiz2_data\specdata
  dfcomp <- data.frame(numeric(),numeric())
  names(dfcomp)<-c("id","nobs")
  for(i in id){
    hw1_df <- read.csv(paste(directory,formatC(i,width = 3,flag="0") ,
                             ".csv",sep = ""))
   
     ts<- nrow(hw1_df[!is.na(hw1_df$sulfate)  & !is.na(hw1_df$nitrate),])
     
     newrow = data.frame(id=i, nobs=ts)
     dfcomp <- rbind(dfcomp, newrow)
     
     
     #rbind(dfcomp,c(i, ts))
   #print(ts)
    
   #print(sum(complete.cases(dataset)))
    
    # print(hw1_df[,is.na(hw1_df[,pollutant])])
    #print(!is.na(hw1_df[,pollutant]))
    #print(tail(hw1_df[,!is.na(hw1_df[,pollutant])]))
    # print(hw1_df[,is.na(hw1_df[,2])])
  }
  dfcomp
}
pollutantmean("C:/Coursera/R-DataLearning-Own/quiz2_data/specdata/","sulfate",1:10)

pollutantmean("C:/Coursera/R-DataLearning-Own/quiz2_data/specdata/","sulfate",50:70)
pollutantmean("C:/Coursera/R-DataLearning-Own/quiz2_data/specdata/","nitrate")
pollutantmean("C:/Coursera/R-DataLearning-Own/quiz2_data/specdata/", "sulfate", c(34))
##

corr<-function(directory,threshold){
  
  cc <- complete("C:/Coursera/R-DataLearning-Own/quiz2_data/specdata/")
  id<-cc[cc$nobs>threshold,"id"]
  numcor<-numeric()
  for(i in id){
    hw1_df <- read.csv(paste(directory,formatC(i,width = 3,flag="0") ,
                             ".csv",sep = ""))
    
    dfcomp<-hw1_df[complete.cases(hw1_df),]
   
    dfcompcor<-cor(dfcomp$sulfate,dfcomp$nitrate)
   
    if(!is.na(dfcompcor))
      numcor<-c(numcor,dfcompcor)

  }
  numcor
}

cc <- complete("C:/Coursera/R-DataLearning-Own/quiz2_data/specdata/", 54)
print(cc$nobs)


set.seed(42)
cc <- complete("C:/Coursera/R-DataLearning-Own/quiz2_data/specdata/", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])

cr <- corr("C:/Coursera/R-DataLearning-Own/quiz2_data/specdata/",0)     
#head(cr)
cr <- sort(cr)                
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

cr <- corr("C:/Coursera/R-DataLearning-Own/quiz2_data/specdata/", 129)                
cr <- sort(cr)                
n <- length(cr)                
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

cr <- corr("C:/Coursera/R-DataLearning-Own/quiz2_data/specdata/", 2000)                
n <- length(cr)                
cr <- corr("C:/Coursera/R-DataLearning-Own/quiz2_data/specdata/", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))