data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")

d1 <- subset(data,Date=="1/2/2007")
d2 <- subset(data,Date=="2/2/2007")

d <- rbind(d1,d2)

hist(d$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col=2)

dev.copy(png, file="plot1.png")
dev.off()
