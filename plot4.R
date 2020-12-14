#open the graphic device and set the canvass for four plots and background transparant
png(filename = "Plot4.png")
par(mfrow = c(2, 2), bg = NA)

#create first plot
plot(workdata$datetime, workdata$Global_active_power, xlab="",ylab= "Global Active Power (kilowatts)"  ,type = "l")

#create second plot
plot(workdata$datetime, workdata$Voltage, xlab="datetime",ylab= "Voltage"  ,type = "l")

#create third plot
with(workdata, plot(datetime,Sub_metering_1, xlab="", ylab = "Energy sub metering", type = "n"))
with(workdata, points(datetime,Sub_metering_1, col = "black", type="l"))
with(workdata, points(datetime,Sub_metering_2, col = "red", type="l"))
with(workdata, points(datetime,Sub_metering_3, col = "blue", type="l"))
legend("topright", pch = 19, col = c("black", "red", "blue"), legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"))

#create fourth plot
plot(workdata$datetime, workdata$Global_reactive_power, xlab="datetime",ylab= "Voltage"  ,type = "l")

#close graphic device
dev.off()