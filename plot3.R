# Nicholas Ricciarelli
# Exploratory Data Analysis
# Course Project 1
# Plot 3

# read household power consumption 
fileName <- "household_power_consumption.txt"
householdData <- read.table(fileName, header = TRUE, sep = ";", dec = ".", na.strings = "?")

# get data from Jan 2 2007 to Feb 2 2007
householdData <- householdData[householdData$Date %in% c("1/2/2007","2/2/2007"), ]

# create plot
date <- as.Date(householdData[, 1], format = "%d/%m/%Y")
time <- strptime(householdData[, 2], format = "%H:%M:%S")
timeAxis <- as.POSIXct(paste(date, householdData[, 2]))

meteringOne <- as.numeric(householdData$Sub_metering_one)
meteringTwo <- as.numeric(householdData$Sub_metering_two)
meteringThree <- as.numeric(householdData$Sub_metering_three)

png("plot3.png", width=480, height=480)
plot(timeAxis, householdData[, 7], xlab = "", ylab = "Energy sub metering", type = "l")
lines(timeAxis, householdData[, 8], col = "red")
lines(timeAxis, householdData[, 9], col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red","blue"), lty = 1)
dev.off()
