setwd("D:\\SLIIT\\Y2 S1\\PS\\LAB\\Lab 8")
dara<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
getwd()
weights_data <- data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
weights <- weights_data$Weight

#Q1
# Population Mean
pop_mean
# Population Standard Deviation
pop_sd

#Q2
#First create null vectors to store sample data sets.
samples<-c()
n<-c()

for(i in 1:25){
  s <- sample(weights, 6, replace = TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste('S',i))
}

#Assign column names for each sample created.Names have stored earlier under "n" variable 
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.sd<- apply(samples,2,sd)

#Q3
samplemean <- mean(s.means)
samplesd   <- sd(s.means)

truemn = pop_mean/6
truesd = pop_sd/6
