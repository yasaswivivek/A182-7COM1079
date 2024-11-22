# Load the dataset
data <- read.csv("path/to/data_70Star.csv")  # Replace with the actual path

# Inspect the dataset structure
str(data)
head(data)

# Filter relevant platforms (N64 and Emu)
cleaned_data <- subset(data, platform %in% c("N64", "Emu"))

# Remove rows with missing or invalid data in Primary_Time_Seconds
cleaned_data <- cleaned_data[!is.na(cleaned_data$Primary_Time_Seconds) & cleaned_data$Primary_Time_Seconds > 0, ]

# Save the cleaned dataset
write.csv(cleaned_data, "data/cleaned_data.csv", row.names = FALSE)

# Verify the cleaned data
head(cleaned_data)
summary(cleaned_data)
