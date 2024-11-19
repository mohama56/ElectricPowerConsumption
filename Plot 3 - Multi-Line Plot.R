# Plot Sub_metering_1
plot(
  filtered_data$datetime, 
  filtered_data$Sub_metering_1, 
  type = "l", 
  col = "black", 
  xlab = "", 
  ylab = "Energy Sub Metering"
)

# Add Sub_metering_2 and Sub_metering_3
lines(filtered_data$datetime, filtered_data$Sub_metering_2, col = "red")
lines(filtered_data$datetime, filtered_data$Sub_metering_3, col = "blue")

# Add a legend
legend(
  "topright", 
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
  col = c("black", "red", "blue"), 
  lty = 1
)

# Save the plot to a file
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()
