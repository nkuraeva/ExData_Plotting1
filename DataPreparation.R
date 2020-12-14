#assumes household_power_consumption.txt file located in working dir
#read data
givingdata <- read.table("./household_power_consumption.txt", stringsAsFactors = FALSE, header = TRUE, sep =";")
#look at the received data
head(givingdata)
#see what classes the data is represented by
sapply(givingdata, class)
#casting data classes to correct values
givingdata$Date <- as.Date(givingdata$Date, format="%d/%m/%Y")
givingdata$Time <- format(givingdata$Time, format="%H:%M:%S")
givingdata$Global_active_power <- as.numeric(givingdata$Global_active_power)
givingdata$Global_reactive_power <- as.numeric(givingdata$Global_reactive_power)
givingdata$Voltage <- as.numeric(givingdata$Voltage)
givingdata$Global_intensity <- as.numeric(givingdata$Global_intensity)
givingdata$Sub_metering_1 <- as.numeric(givingdata$Sub_metering_1)
givingdata$Sub_metering_2 <- as.numeric(givingdata$Sub_metering_2)

# subset data from 2007-02-01 and 2007-02-02
workdata <- subset(givingdata, Date == "2007-02-01" | Date =="2007-02-02")