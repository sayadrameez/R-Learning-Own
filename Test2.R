source("Test.R")

headAndTailVectors<-function(){
  print(head(movies_vector,1))
  print(head(movies_vector,n=2))
  print(tail(year_vector,2))
  
}
headAndTailVectors()
costs <- c(3, 15, 3, 10)
list_movie <- list(name ="toy Story",year=1995,genre=c("Action","Comedy","Animation")) 

dataframe_moveis<-data.frame(name=movies_vector,year=year_vector,length = movielength_vector)
dataframe_moveis3<-data.frame("name"=c("Helo","ds"))

vectorConditions<-function(){
  names(year_vector)<-
  print(year_vector[c(TRUE,TRUE)])#Interesting
  print(year_vector[c(3,4)])
  print(costs[15,10])
  print(costs[c(15,10)])
  print(costs(costs>5))
  print(costs[costs > 5])
  print(costs > 5)
}
vectorConditions()


arraysAndMatrices<-function(){
  print(array(movies_vector,dim = c(3,4)))
  print(matrix(movies_vector,nrow = 3, ncol = 4))
  print(matrix(movies_vector,nrow = 3, ncol = 4, byrow = TRUE))
  print(matrix(movies_vector,nrow = 3, ncol = 4, byrow = TRUE)[1:2,2:3])#Subset of matrix
}

listOperations<-function(){
print(list_movie)
  print(list_movie$genre)
        print(list_movie["year"])
              list_movie$age <-30
                    print(list_movie$age)
list_movie$year<-NULL
print(list_movie)
}

listOperations()

dataFramesOperations<- function(){
  print(dataframe_moveis)
  remove <- 1980
  year_vector<-year_vector [! year_vector %in% remove]
  print(year_vector)
  dataframe_moveis[1,2]<-NA
  print(dataframe_moveis)
  # dataframe_moveis2<- data.frame(name = dataframe_moveis$name,
  #                                year = dataframe_moveis$year,
  #                                length = dataframe_moveis$length,stringsAsFactors=FALSE)
  #print(dataframe_moveis2)
  
  dataframe_moveis2 <- data.frame(lapply(dataframe_moveis, as.character), stringsAsFactors=FALSE)
  
  dataframe_moveis2<-rbind(dataframe_moveis2,c("Moana",2017,"Medium"))
  
  print(dataframe_moveis2)
  
  dataframe_moveis[1]<-lapply(dataframe_moveis[1], as.character)
  dataframe_moveis<-rbind(dataframe_moveis,c("Logan",2017,"Long"))
  
  print(dataframe_moveis)
}

dataFramesOperations()

datatFrameOperations2<-function(){
  str(dataframe_moveis)
  dataframe_moveis <- dataframe_moveis[-2,]
  print(dataframe_moveis)
  dataframe_moveis$length<-NULL
  print(dataframe_moveis)
  #Subset of DataFrame
  print(dataframe_moveis[1:2,1:2])
}
datatFrameOperations2()
print(dataframe_moveis)
attributes(dataframe_moveis)