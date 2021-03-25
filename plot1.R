source('~/R/ExdataProject1/ProcessData.R')
## data is saved as household_data
hist(household_data$Global_active_power,
     xlab = "Global Active Power(kilowatts)",
     main="Global Active Power",
     col="red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off() 
