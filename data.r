

get_data <- function() {
  df <- read.table("household_power_consumption.txt",
                   colClasses=c("character", "character", rep("numeric",7)),
                   header=TRUE,
                   sep=";",
                   na="?")
  # convert to Date/Time
  df$Time <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
  df$Date <- as.Date(df$Date, "%d/%m/%Y")
  #Datas from 2007-02-01 to 2007-02-02
  dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  df <- subset(df, Date %in% dates)
  
  #Return datas
  return(df)
}