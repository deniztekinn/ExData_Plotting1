
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)

data$Date <- as.Date(data$Date,"%d/%m/%Y")

feb <- subset(data, subset =(Date >= "2007-02-01" & Date <= "2007-02-02" ))
feb$Time  <- format(feb$Time, format="%H:%M:%S")
feb$Global_active_power <- as.numeric(feb$Global_active_power)
feb

png(filename = "plot1.png", width = 480, height = 480)
hist(feb$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power")
dev.off()

