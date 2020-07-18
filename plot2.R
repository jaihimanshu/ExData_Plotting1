a<- read.csv("household_power_consumption.txt", sep=";")
a$Date<- strptime(paste(a$Date, a$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
b<- subset(a, unclass(a$Date)$year==107)  # It takes data of only the 2007 year.
c<- subset(b, months(b$Date)=="February")  # It takes the data of Februaury of 2007
d<- subset(c, unclass(c$Date)$mday==c(1,2)) 

png("plot-2.png")
plot(d$Date, d$Global_active_power, type="l", xlab = "", ylab = "Global active power(in kilowatts)", ylim=c(0,6), yaxt="n")
axis(2, at = seq(0, 6, 2), labels = seq(0, 6, 2))
dev.off()