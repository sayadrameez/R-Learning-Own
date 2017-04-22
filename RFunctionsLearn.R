above <-function(x,y=40,z)
{
  use<-x<y & x>z
  x[use]
}

above(1:100,z=8)

columnmean<-function(y,remna=TRUE){
  nc<-ncol(y)
  means<- numeric(nc)
  for(i in 1:nc){
    means[i]<-mean(y[,i],na.rm = remna)
  }
  means
}
columnmean(airquality)

search()