source("data.R")

plot1 <- function() {
  #Load datas
  data <- get_data()
  
  #Image config
  png("plot1.png", width=400, height=400)
  
  #Plot config
  hist(data$Global_active_power,
       main="Global Active Power",
       ylab="Frequency",
       xlab="Global Active Power (kilowatts)",
       col="red")
  
  dev.off()
}

