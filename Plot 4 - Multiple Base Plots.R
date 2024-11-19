# Set up a 2x2 plotting area
par(mfrow = c(2, 2))

# Top-left: Global Active Power
plot(
  filtered_data$datetime, 
  filtered_data$Global_active_power, 
  type = "l", 
  xlab = "", 
  ylab = "Global Active Power"
)

# Top-right: Voltage
plot(
  filtered_data$datetime, 
  filtered_data$Voltage, 
  type = "l", 
  xlab = "datetime", 
  ylab = "Voltage"
)

# Bottom-left: Energy Sub Metering
plot(
  filtered_data$datetime, 
  filtered_data$Sub_metering_1, 
  type = "l", 
  col = "black", 
  xlab = "", 
  ylab = "Energy Sub Metering"
)
lines(filtered_data$datetime, filtered_data$Sub_metering_2, col = "red")
lines(filtered_data$datetime, filtered_data$Sub_metering_3, col = "blue")
legend(
  "topright", 
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
  col = c("black", "red", "blue"), 
  lty = 1, 
  bty = "n"
)

# Bottom-right: Global Reactive Power
plot(
  filtered_data$datetime, 
  filtered_data$Global_reactive_power, 
  type = "l", 
  xlab = "datetime", 
  ylab = "Global Reactive Power"
)

# Save the plots to a file
dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()
