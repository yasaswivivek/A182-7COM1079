library(ggplot2)
ggplot(cleaned_data, aes(x = platform, y = primary_time_seconds, fill = platform)) +
  geom_boxplot() +
  labs(title = "Comparison of Primary Time by Platform",
       x = "Platform",
       y = "Primary Time (Seconds)") +
  theme_minimal()
