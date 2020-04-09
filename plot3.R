feb

png(filename = "plot3.png", width = 480, height = 480)
plot(feb$Datetime, feb$Sub_metering_1, type = "l", col="black", 
     ylab = "Energy sub metering", xlab = " ")
points(feb$Datetime, y=feb$Sub_metering_2, type = "l", col="red")
points(feb$Datetime, y=feb$Sub_metering_3, type = "l", col="blue")
legend("topright", col = c("black", "red", "blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd = 3)
dev.off()
