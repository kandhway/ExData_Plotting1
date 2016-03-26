rm(list = ls())
#Upload the Data
  dataFile <- "./household_power_consumption.txt"
  data <- read.table(dataFile, header=T, sep=";", stringsAsFactors=F, dec=".")
  subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
  head(subSetData)
  str(subSetData)
  globalActivePower <- as.numeric(subSetData$Global_active_power)
  datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
  globalActivePower <- as.numeric(subSetData$Global_active_power)
  
#Plot the Chart
  png("plot2.png", width=480, height=480)
  plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  dev.off()
  