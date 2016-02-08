source("data.R")

plot3 <- function() {
  #Load datas
  data <- get_data()
  
  #Image config
  png("plot3.png", width=400, height=400)
  
  #Plot config
  plot(data$Time, 
       data$Sub_metering_1, 
       type="l", 
       ylab="Energy sub metering",
       xlab="",
       col="black")
  

  lines(data$Time, data$Sub_metering_2, col="red")
  lines(data$Time, data$Sub_metering_3, col="blue")
  

  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  
  dev.off()
}