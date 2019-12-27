#Reading data
data <- read.table("household_data_consumption.txt",skip=1,sep=";",na.strings="?")
names(data) <- c("Date","Time","Global_active_data","Global_reactive_data","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subdata <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")

#plot function
hist(as.numeric(as.character(subdata$Global_active_data)),col="red",main="Global Active data",xlab="Global Active data(kilowatts)")

# naming the graph
title(main="Global Active Power")
