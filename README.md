# io-turnover-analysis

This repository contains a minimum viable project for predicting employee turnover using a public HR dataset. The goal is to showcase the ability to clean data, perform exploratory data analysis, build a simple predictive model, and communicate findings.

## Project overview

- **Goal:** Identify the factors associated with employee turnover and build a logistic regression model to predict turnover.
- **Data:** Uses a publicly available human resources dataset (e.g., the IBM HR Analytics Employee Attrition dataset). This project uses a cleaned subset of this dataset.
- **Deliverables:**
  - `data/`: raw and cleaned datasets (public or simulated).
  - `scripts/`: R scripts for data cleaning, exploration, and modeling.
  - `report/`: A short report summarizing methods, results, and recommendations (R Markdown or HTML).
  - `outputs/`: Generated figures and model outputs.

## Folder structure

```
io-turnover-analysis/
  README.md
  data/
    raw/            # raw data (public HR dataset)
    processed/      # cleaned data
  scripts/
    01_load_clean.R # import and clean data
    02_eda.R        # exploratory data analysis
    03_model.R      # build and evaluate a logistic regression model
  report/
    report.Rmd      # report file in R Markdown
  outputs/
    figures/        # figures and plots
```

## Getting started

1. Clone this repository:
   ```bash
   git clone https://github.com/mgrudr/io-turnover-analysis.git
   ```
2. Install the required R packages (e.g., `tidyverse`, `ggplot2`).
3. Run the scripts in the order provided (`scripts/01_load_clean.R`, `scripts/02_eda.R`, `scripts/03_model.R`) or knit the report in `report/report.Rmd`.

## License

This project is licensed under the MIT License (see `LICENSE` file for details).
