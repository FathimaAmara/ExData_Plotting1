#reading data
data <- read.table("household_power_consumption.txt",skip=1,sep=";",na.strings="?")
names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subdata <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")

#date function
datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

globalActivePower <- as.numeric(subdata$Global_active_power)

#plotting
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
