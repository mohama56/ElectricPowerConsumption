# Load the dataset
data <- fread("household_power_consumption.txt", sep = ";", na.strings = "?")

# Filter data for specific dates
data <- data[Date %in% c("1/2/2007", "2/2/2007")]

# Convert Date and Time into a single Datetime column
data$Datetime <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

# Convert Global_active_power to numeric
data$Global_active_power <- as.numeric(data$Global_active_power)

