ggplot(data, aes(x = platform_encoded, y = primary_time_seconds)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", color = "red") +
  ggtitle("Scatter Plot with Regression: Platform vs Primary Time") +
  xlab("Platform (Encoded)") +
  ylab("Primary Time (Seconds)")