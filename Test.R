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
 
 factorSummaryCheck<-function(){
   print(factor(genre_vector ))
   print(summary(genre_vector))
   print(summary(factor(genre_vector)))
 }
 
 factorSummaryCheck()