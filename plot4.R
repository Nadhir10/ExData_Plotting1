## Exploratory Data Analysis
## Week 1 : peer review assignment
## Plot 4 

## read and label data
## the text file should be in your working space
x<-read.table("household_power_consumption.txt",sep=";" ,skip=66637, nrows=2880, na.strings="?")
label<-read.table("household_power_consumption.txt",header= TRUE, sep=";", nrows=1)
names(x)<-names(label)

## Generating datetime variable
library(lubridate)
datetime<-dmy_hms(paste(x$Date,x$Time))

## Note : my OS is in French, wich explains why days are (Jeu, Ven, Sam) 
## rather than (Thu, Fri, Sat)

## plotting on PNG device
png("plot4.png")

par(mfcol=c(2,2))

## plot 4.1
with(x,plot(datetime, Global_active_power,"n", xlab = "",ylab="Global Active Power"))
lines(datetime, x$Global_active_power)

## plot 4.2
plot(datetime, x$Sub_metering_1,"n", xlab = "", ylab="Energy sub metering") ## has the correct axis
lines(datetime, x$Sub_metering_1)
lines(datetime, x$Sub_metering_2, col="red")
lines(datetime, x$Sub_metering_3, col="blue")
legend("topright", lty=c(1,1,1), bty="n", col=c("black","blue","red"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))


## plot 4.3
with(x, plot(datetime, Voltage,"n"))
lines(datetime, x$Voltage)

## plot 4.4
with(x, plot(datetime, Global_reactive_power,"n"))
lines(datetime, x$Global_reactive_power)

dev.off()
