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

# Functions inside another function
make.power<-function(n)
{
  pow<-function(x){
    x^n
  }
  pow
}
cube<- make.power(3)
square<-make.power(2)

cube(999)
square(20)

ls(environment(cube))

testPlotting<-function(){
  x<-seq(1.7,1.9,length = 100 )
  y<-seq(-5,-4,length = 100)
  plot(x,exp(y),type = 'h')
}
testPlotting()

testDates <- function() {
  dt <- as.Date("1970-01-01")
  print(dt)
  print(unclass(dt))
  print(unclass(as.Date("1970-02-01")))
  print(Sys.time())
  print(as.POSIXct(Sys.Date()))
  
  xd<-as.POSIXct(Sys.time())
  
  
  print(xd)
  print(as.POSIXlt(Sys.time())$sec)
}
testDates()
