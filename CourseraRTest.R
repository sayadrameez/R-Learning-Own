source("Test2.R")
MixingVectors<-function(){
  y<-c(1.7,"a")
  f<-c(TRUE,2)
  g<-c("a",TRUE)
  print(y)
  print(f)
  print(g)
  
}
MixingVectors()
vd<- c(1:4,rep(NA,times=3),3,2)
mismatrix<-matrix(vd,nrow=3)
mismatrix

mismatrix2<-matrix(vd,nrow=2)
mismatrix2

mismatrix3<-matrix(vd,nrow=3,byrow = TRUE)
mismatrix3

checkFactors<-function(){
  # unspecifed factors come as NA 
 print(factor(movielength_vector,ordered = TRUE, levels = c("Short","Medium") ))
  ##Mix of DtaFrame in a list
  print(list(dataframe_moveis,dataframe_moveis3,list_movie))
}

checkFactors()

readTableTests<-function(){
  delimDs<-read.delim2("c:/Coursera/LearnDS1.txt")
  print(delimDs)
  delimDs3<-read.delim2("c:/Coursera/LearnDS1.txt", colClasses = c("character","NULL","character","NULL","NULL","NULL","NULL","NULL"))
  print(delimDs3)
  delimDs3<-read.delim2("c:/Coursera/LearnDS1.txt",
                        nrows = 3,
                        colClasses = c("character","NULL","character","NULL","NULL","NULL","NULL","NULL"))
  print(delimDs3)
  #Does not work
  plainds <- read.table("c:/Coursera/LearnDS1.txt",colClasses = c("character","numeric",
   "character","numeric","numeric","numeric","numeric","numeric"))
  print(plainds)
}
readTableTests()

dputTest<-function(){
  dput(dataframe_moveis)
}
dputTest()

urlTest<-function(){
  con<-url("http://www.jhsph.edu","r")
  x<-readLines(con)
  print(tail(x))
}
ptime<-proc.time()
urlTest()
proc.time() - ptime

testMissingValues<-function(){
  good<-complete.cases(mismatrix)
  #print(good)
  print(is.na(mismatrix))
  print(is.na(mismatrix3))
  print(mismatrix[!is.na(mismatrix)])
  print(mismatrix3[!is.na(mismatrix3)])
  print(mismatrix[good,][,])
}
testMissingValues()

