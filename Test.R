checkEqualSign<- function(){
  y<-100
  x=200
  z<-y+x
  z_v<-c(z,x,y)
  print(z_v)
  #Remove variable from z_v
  rm(z_v)
}
checkEqualSign()

genre_vector<-c("Action","Comedy","Thriller","Thriller","Action","Action")
movielength_vector<- c("Short","Long","Medium","Medium","Long","Long")
year_vector <-c(1980,2002,2015,1992,2012,2008)
movies_vector<-c("Matrix","LOTR","Star Wars","Hobbit","Harry Potter","Home Alone")

factorSummaryCheck<-function(){
  print(factor(genre_vector ))
  print(summary(genre_vector))
  print(summary(factor(genre_vector)))
  print(
    factor(movielength_vector,ordered = TRUE, levels = c("Short","Medium","Long") )
  )
  
}

factorSummaryCheck()

vectorOperationsLength<- function(){
  names(year_vector) <- movies_vector
  print(movies_vector)
  print(year_vector)
  sorte_movies_vector<-sort(movies_vector)
  sorte_year_vector<-sort(year_vector)
  print(sorte_movies_vector)
  print(sorte_year_vector)
  print(min(movies_vector))
  print(max(movies_vector))
  print(min(year_vector))
  print(max(year_vector))
}

vectorOperationsLength()

checkAverage <- function(){
  sumdivbylen<-  sum(year_vector)/ length(year_vector)
  print(sumdivbylen)
  print(mean(year_vector))
  print(summary(year_vector))
}

checkAverage()

checkNegativeIndex <- function(){
  print(movies_vector)
  print(movies_vector[-1:-3])
  print(movies_vector)
}

checkNegativeIndex()

checkForG<-function(f){
  if(f >1999){
    print("Hi")
  }else{
    print("Why")
  }
}

checkForG(year_vector)

for(y in year_vector)
  checkForG(y)

