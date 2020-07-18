a<- read.csv("household_power_consumption.txt", sep=";")
a$Date<- strptime(paste(a$Date, a$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
b<- subset(a, unclass(a$Date)$year==107)  # It takes data of only the 2007 year.
c<- subset(b, months(b$Date)=="February")  # It takes the data of Februaury of 2007
d<- subset(c, unclass(c$Date)$mday==c(1,2)) 

png("plot-3.png")
plot(d$Date, d$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", lwd=2)
lines(d$Date, d$Sub_metering_2, lwd=2, col="red")
lines(d$Date, d$Sub_metering_3, lwd=2, col="blue")
legend("topright", col=c("black","red","blue"), lwd=2, legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()