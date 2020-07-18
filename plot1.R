a$Date<- strptime(paste(a$Date, a$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot-1.png")
hist(as.numeric(d$Global_active_power), col="red", xlab = "Global Active Power(kilowatts)", main="")
dev.off()