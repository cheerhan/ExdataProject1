source('~/R/ExdataProject1/ProcessData.R')
## data is saved as household_data
plot(x = household_data$datetime,
     y = household_data$Global_active_power,
     type = "l",
     ylab = "Global Active Power(kilowatts)",
     xlab = "")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
