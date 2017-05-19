## Exploratory Data Analysis
## Week 1 : peer review assignment
## Plot 1 

## read and label data
## the text file should be in your working space
x<-read.table("household_power_consumption.txt",sep=";" ,skip=66637, nrows=2880, na.strings="?")
label<-read.table("household_power_consumption.txt",header= TRUE, sep=";", nrows=1)
names(x)<-names(label)

## Note : my OS is in French, wich explains why days are (Jeu, Ven, Sam) 
## rather than (Thu, Fri, Sat)

## plotting on PNG device
png("plot1.png")
with(x, hist(Global_active_power, col="red", main ="Global Active Power", xlab ="Global Active Power (kilowatts)",ylab = "Frequency"))
dev.off()

