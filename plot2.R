feb$Datetime <- as.POSIXct(paste(feb$Date, feb$Time)) 
feb

png(filename = "plot2.png", width = 480, height = 480)
plot(feb$Datetime, feb$Global_active_power, type = "l", 
     ylab = "Global Active Power (kilowatts)", xlab = "")
 dev.off()
 