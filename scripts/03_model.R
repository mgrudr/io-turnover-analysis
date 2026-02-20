# 03_model.R
# Build logistic regression model to predict employee turnover
# This script fits a logistic regression model, evaluates its performance, and saves results.

# Load necessary libraries
library(dplyr)
library(ggplot2)

# Load cleaned dataset
clean_data <- read.csv("data/processed/clean_data.csv")

# Fit logistic regression model
# Replace the predictor variables below with those relevant to your cleaned dataset
# Example: predicting turnover (binary: 1=Left, 0=Stayed) using age, tenure, job_satisfaction, department
model <- glm(turnover ~ age + tenure + job_satisfaction + department, data = clean_data, family = binomial)

# Summary of model
summary(model)

# Predict probabilities on the dataset
clean_data$pred_prob <- predict(model, type = "response")

# Generate predicted classes using a 0.5 probability threshold
clean_data$pred_class <- ifelse(clean_data$pred_prob >= 0.5, 1, 0)

# Confusion matrix
conf_matrix <- table(Actual = clean_data$turnover, Predicted = clean_data$pred_class)
print(conf_matrix)

# Plot ROC curve (requires pROC package)
# Uncomment the following lines if you have the pROC package installed
# library(pROC)
# roc_obj <- roc(clean_data$turnover, clean_data$pred_prob)
# plot(roc_obj, main = "ROC Curve for Turnover Model")
# auc_value <- auc(roc_obj)
# print(paste("AUC:", auc_value))
