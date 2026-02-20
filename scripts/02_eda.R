# 02_eda.R
# Exploratory Data Analysis for the turnover dataset
# This script generates descriptive statistics and visualizations to understand variable distributions and relationships.

# Load necessary libraries
library(dplyr)
library(ggplot2)

# Load cleaned dataset
# Replace 'data/processed/clean_data.csv' with your actual path or object if reading from RDS.
clean_data <- read.csv("data/processed/clean_data.csv")

# Summary statistics
summary(clean_data)

# Plot distribution of key variables (example)
# Example: histogram of tenure
ggplot(clean_data, aes(x = tenure)) +
  geom_histogram(bins = 30) +
  labs(title = "Distribution of Tenure", x = "Tenure (years)", y = "Count")

# Scatter plot exploring relationship between age and turnover
# Turnover should be coded as a numeric or factor variable in your cleaned data
# 1 = Employee left the company; 0 = Employee stayed
clean_data$turnover <- as.numeric(clean_data$turnover)

ggplot(clean_data, aes(x = age, y = turnover)) +
  geom_jitter(alpha = 0.5) +
  geom_smooth(method = "loess") +
  labs(title = "Relationship between Age and Turnover", x = "Age", y = "Turnover (0=Stayed, 1=Left)")
