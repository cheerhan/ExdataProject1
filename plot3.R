source('~/R/ExdataProject1/ProcessData.R')
## data is saved as household_data
with(household_data,{
  plot(Sub_metering_1~datetime,type = "l",xlab = "",ylab = "Energy Sub Metering")
  lines(Sub_metering_2~datetime,col="red")
  lines(Sub_metering_3~datetime,col="blue")
  legend("topright", lty=1, lwd=2, col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
  })
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()