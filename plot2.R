#create column in table with date and time merged together
datetime<-as.POSIXct(paste(workdata$Date,workdata$Time,sep =" "))
workdata <- cbind(workdata, datetime)
#add names od weekdays in data
workdata$weekday <- weekdays(as.Date(workdata$Date))

#plot globalactivepower vs date&time
png("plot2.png", width=480, height=480)
plot(workdata$datetime, workdata$Global_active_power, xlab="weekday",ylab= "Global Active Power (kilowatts)", pch = ".")
lines(workdata$datetime, workdata$Global_active_power)
dev.off()
