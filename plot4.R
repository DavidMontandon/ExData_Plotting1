source("data.R")

plot4 <- function() {
  #Load datas
  data <- get_data()
  
  #image config
  png("plot4.png", width=400, height=400)
  
  #Plot1
  par(mfrow=c(2,2))
  plot(data$Time, data$Global_active_power,
       type="l",
       ylab="Global Active Power",
       xlab="")
  
  #Plot2
  plot(data$Time, 
       data$Voltage, 
       type="l",
       ylab="Voltage", 
       xlab="datetime" )
  
  #Plot3
  plot(data$Time, 
       data$Sub_metering_1, 
       type="l", 
       col="black",
       ylab="Energy sub metering",
       xlab="")
  
  lines(data$Time, data$Sub_metering_2, col="red")
  lines(data$Time, data$Sub_metering_3, col="blue")
  
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1,
         box.lwd=0)
  #Plot4
  plot(data$Time, 
       data$Global_reactive_power, 
       type="n",
       ylab="Global_reactive_power",
       xlab="datetime")
  
  lines(data$Time, data$Global_reactive_power)
  
  dev.off()
  
}