setwd("C:\\Users\\user\\OneDrive - Sri Lanka Institute of Information Technology\\new\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24100597")
getwd()

Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE)
print(Delivery_Times)


hist(Delivery_Times$Delivery,
     breaks = seq(20, 70, by = 5),
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Times",
     ylab = "Frequency",
     col = "purple",
     border = "black")


hist_data <- hist(Delivery_Times$Delivery,
                  breaks = seq(20, 70, by = 5),
                  right = FALSE,
                  plot = FALSE)

cumulative_freq <- cumsum(hist_data$counts)

plot(hist_data$mids, cumulative_freq,
     type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     pch = 16,
     col = "red")