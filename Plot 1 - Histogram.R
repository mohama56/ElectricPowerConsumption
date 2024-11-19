# Load required libraries
library(data.table)

# Load the dataset
data <- fread("household_power_consumption.txt", sep = ";", na.strings = "?")

# Convert the Date column to Date format
data[, Date := as.Date(Date, format = "%d/%m/%Y")]

# Subset the data for 2007-02-01 and 2007-02-02
filtered_data <- data[Date %in% as.Date(c("2007-02-01", "2007-02-02"))]

# Convert Global_active_power to numeric
filtered_data[, Global_active_power := as.numeric(Global_active_power)]

# Check for NA values and handle if necessary
filtered_data <- filtered_data[!is.na(Global_active_power)]

# Plot the histogram
hist(
  filtered_data$Global_active_power,
  main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)",
  ylab = "Frequency",
  col = "red",
  breaks = 50
)

# Save the plot to a file
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()
