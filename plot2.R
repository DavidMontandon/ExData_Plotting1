source("data.R")

plot2 <- function() {
  #Load datas
  data <- get_data()
  
  #Image config
  png("plot2.png", width=400, height=400)
  
  #Plot config
  plot(data$Time, data$Global_active_power,
       type="l",
       ylab="Global Active Power (kilowatts)",
       xlab="")
  
  dev.off()
}