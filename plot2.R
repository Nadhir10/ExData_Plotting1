## Exploratory Data Analysis
## Week 1 : peer review assignment
## Plot 2 

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
png("plot2.png")
plot(datetime, x$Global_active_power,"n", xlab = "", ylab="Global Active Power (kilowatts)")
lines(datetime, x$Global_active_power)
dev.off()

