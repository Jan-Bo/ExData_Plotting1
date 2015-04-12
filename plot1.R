
data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

png("plot1.png")
hist(datasub$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = 2)
dev.off()