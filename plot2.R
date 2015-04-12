data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

datasub <- data[( data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]

time = paste(datasub$Date, " ", datasub$Time)
timex = strptime(time, "%d/%m/%Y %H:%M:%S")

png("plot2.png")
plot(timex, datasub$Global_active_power, ylab = "Global Active Power (kilowatts)", xlab ="", type = "l")
dev.off()

## Note: This produces Spanish days of the week on my machine.
## I ran out of time to find out how to change them to English.