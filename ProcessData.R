library(readr)
library(lubridate)
library(tidyr)

household_data <- read.csv("~/R/ExdataProject1/household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
household_data <- subset(household_data,grepl("^1/2/2007|^2/2/2007",household_data$Date))
household_data <- unite(household_data,datetime,c(Date,Time))
household_data$datetime <- dmy_hms(household_data$datetime)
