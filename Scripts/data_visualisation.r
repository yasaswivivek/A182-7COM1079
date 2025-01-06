# Load necessary libraries
library(ggplot2)

# Read the data
data <- read.csv('cleaned_data.csv')

# Bar plot to show the count of entries for each platform
ggplot(data, aes(x = platform)) +
  geom_bar(fill = 'steelblue') +
  labs(title = 'Count of Entries for Each Platform',
       x = 'Platform',
       y = 'Count') +
  theme_minimal()

# Box plot to compare the distribution of primary_time_seconds for each platform
ggplot(data, aes(x = platform, y = primary_time_seconds, fill = platform)) +
  geom_boxplot() +
  labs(title = 'Distribution of Primary Time by Platform',
       x = 'Platform',
       y = 'Primary Time (seconds)') +
  theme_minimal()
