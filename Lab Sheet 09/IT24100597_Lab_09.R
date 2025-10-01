setwd("D:\\SLIIT\\Y2 S1\\PS\\LAB\\Lab 9")
data <- rnorm(25, mean = 45, sd = 2)
data

result <- t.test(data, mu = 46, alternative = "less")


result

