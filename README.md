# Retail-Sales-Analysis-SQL
Analysis of retail sales trends using SQL queries to explore revenue by category, gender, and age group.

The dataset used in this project was obtained from Kaggle:
https://www.kaggle.com/datasets/mohammadtalib786/retail-sales-dataset

This data set contains transaciton-level sales data including product

## Data Preparation

The original dataset from Kaggle was already mostly clean. The following steps were performed in Microsoft Excel to validate and enrich the data for analysis:

1. **Validation Checks**
   - Checked for duplicate transactions.
   - Verified that `Total_Amount` matches `Quantity × Price_per_Unit`.
   - Confirmed that the `Date` column is in a consistent date format.
   - Checked for spelling errors in categorical columns (`Gender`, `Product_Category`).

2. **Enrichment**
   - Added an `Age_Group` column based on `Age` to categorize customers (e.g., Under 25, 26-34, 35-44,45-54, 55+).
   - Extracted `Month` from the `Date` column to analyze monthly and seasonal trends.


## Business Questions Answered
The SQL analysis in this project aims to answer the following business questions:
1. Which product categories generate the most revenue?
2. Which product categories sell best to different genders or age groups?
3. How does revenue vary by month?
4. Are there seasonal trends in sales?

   


   
