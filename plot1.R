# Nicholas Ricciarelli
# Exploratory Data Analysis
# Course Project 1
# Plot 1

# read household power consumption 
fileName <- "household_power_consumption.txt"
householdData <- read.table(fileName, header = TRUE, sep = ";", dec = ".", na.strings = "?")

# get data from Jan 2 2007 to Feb 2 2007
householdData <- householdData[data$Date %in% c("1/2/2007","2/2/2007"), ]

# create plot
activePowerData <- as.numeric(householdData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(activePowerData, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
