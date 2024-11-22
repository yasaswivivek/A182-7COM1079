# Histogram of Primary Time
hist(cleaned_data$primary_time_seconds,
     breaks = 20,
     main = "Histogram of Primary Time (Seconds)",
     xlab = "Primary Time (Seconds)",
     col = "lightblue",
     probability = TRUE)

# Overlay a density curve
lines(density(cleaned_data$primary_time_seconds), col = "red", lwd = 2)

# Add rug plot for individual observations
rug(cleaned_data$primary_time_seconds)
