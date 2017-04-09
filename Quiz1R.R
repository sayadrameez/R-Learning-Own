hw1_df<-read.csv("quiz1_data/hw1_data.csv")
hw1_df

print(hw1_df[1:2,])
print(length(hw1_df))
print(attributes(hw1_df))
print(dim(hw1_df))
print(tail(hw1_df,2))
print(hw1_df[47,])
print(is.na(hw1_df[,1]))
print(sum(is.na(hw1_df[,1])))
print(mean(hw1_df[,is.na(hw1_df[,1])]))
x <- 4
print( class(x <- 4))
print( class(x))
x <- c(4, TRUE)
print(class(x <- c(4, TRUE)))
print( class(x))
x <- c(1,3, 5)
y <- c(3, 2, 10)
print(rbind(x,y))

x <- list(2, "a", "b", TRUE)
x
x[[2]]
print(length(x[[2]]))

x <- 1:4
y <- 2
x + y

print(hw1_df[!is.na(hw1_df[,])])

hw1_df[!is.na(hw1_df$Ozone) & hw1_df$Ozone>31,]
hw1_df[!is.na(hw1_df$Temp) & hw1_df$Temp>90,]
new_hw1_df<- 
  hw1_df[!is.na(hw1_df$Temp) & hw1_df$Temp>90 & !is.na(hw1_df$Ozone) & hw1_df$Ozone>31,]

mean(new_hw1_df[,2])

temp_hw1df<-
  hw1_df[!is.na(hw1_df$Month) & hw1_df$Month==6,]
temp_hw1df
mean(temp_hw1df[,4])


max(hw1_df[!is.na(hw1_df$Ozone) & !is.na(hw1_df$Month) & hw1_df$Month==5,][,1])
hw1_df[!is.na(hw1_df$Ozone),][,1]
mean(hw1_df[!is.na(hw1_df$Ozone),][,1])