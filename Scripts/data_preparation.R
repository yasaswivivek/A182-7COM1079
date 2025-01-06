# Load necessary libraries
library(dplyr)

# Read the data
data <- read.csv('cleaned_data.csv')

# 1. Check for missing values
missing_values <- sapply(data, function(x) sum(is.na(x)))
print(missing_values)

# 2. Data type conversion if necessary (e.g., platform should be a factor)
data$platform <- as.factor(data$platform)

# 3. Summary statistics
summary(data)

# 4. Outlier detection using boxplot stats
boxplot_stats <- boxplot.stats(data$primary_time_seconds)
outliers <- boxplot_stats$out
print(outliers)

# Optional: Filter out outliers if needed
data_filtered <- data %>% filter(!primary_time_seconds %in% outliers)
