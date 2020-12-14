# plot histogram of global active power
png("plot1.png", width=480, height=480)
hist(workdata$Global_active_power, col="red", border="black", main ="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()
