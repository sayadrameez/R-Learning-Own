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
}

dataFramesOperations()