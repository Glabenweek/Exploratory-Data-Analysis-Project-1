data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")

d1 <- subset(data,Date=="1/2/2007")
d2 <- subset(data,Date=="2/2/2007")

d <- rbind(d1,d2)

plot(d$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xaxt="n", xlab="")
axis(1, at=c(0,nrow(d)/2,nrow(d)), labels = c("Thu", "Fri", "Sat"))
lines(d$Global_active_power)

dev.copy(png, file="plot2.png")
dev.off()
