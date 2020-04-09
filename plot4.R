

png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
plot(feb$Datetime, feb$Global_active_power, type = "l", 
     ylab = "Global Active Power (kilowatts)", xlab = "")
plot(feb$Datetime, feb$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(feb$Datetime, feb$Sub_metering_1, type = "l", col="black", 
     ylab = "Energy sub metering", xlab = " ")
points(feb$Datetime, y=feb$Sub_metering_2, type = "l", col="red")
points(feb$Datetime, y=feb$Sub_metering_3, type = "l", col="blue")
legend("topright", col = c("black", "red", "blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd = 3, bty ="n")
plot(feb$Datetime, feb$Global_reactive_power, xlab = "datetime", 
     ylab = "Global_reactive_power", type = "l")
dev.off()


