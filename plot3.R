png(filename = "Plot3.png")

with(workdata, plot(datetime,Sub_metering_1, xlab="", ylab = "Energy sub metering", type = "n"))
with(workdata, points(datetime,Sub_metering_1, col = "black", type="l"))
with(workdata, points(datetime,Sub_metering_2, col = "red", type="l"))
with(workdata, points(datetime,Sub_metering_3, col = "blue", type="l"))
legend("topright", pch = 19, col = c("black", "red", "blue"), legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"))

dev.off()