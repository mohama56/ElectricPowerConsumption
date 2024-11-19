# Combine Date and Time into a single datetime column
filtered_data[, datetime := as.POSIXct(paste(Date, Time), format = "%Y-%m-%d %H:%M:%S")]

# Plot Global Active Power over time
plot(
  filtered_data$datetime, 
  filtered_data$Global_active_power, 
  type = "l", 
  xlab = "", 
  ylab = "Global Active Power (kilowatts)",
  main = "Global Active Power Over Time"
)

# Save the plot to a file
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()
