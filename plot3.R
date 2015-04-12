data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

datasub <- data[( data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]

time = paste(datasub$Date, " ", datasub$Time)
timex = strptime(time, "%d/%m/%Y %H:%M:%S")

png("plot3.png")
plot(timex, datasub$Sub_metering_1, ylab = "Energy sub metering", xlab ="", type = "l")
lines (timex, datasub$Sub_metering_2, col = "red")
lines (timex, datasub$Sub_metering_3, col = "blue")
legend("topright", pch = "___", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

## Note: This produces Spanish days of the week on my machine.
## I ran out of time to find out how to change them to English.