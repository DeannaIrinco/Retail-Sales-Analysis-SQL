# Retail Sales Analysis SQL
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


----------------------------------------------------------------------------------------------------

## Insights with the Query

Query 1

Interpretation:
- **Electronics** lead the market with the highest total revenue.
- **Clothing** is close behind, making it another core driver of income.
- **Beauty** contributes slightly less, but still remains a valuable part revenue.
- No single category dominates. This suggests a balanced sales portfolio.

Query 2

Interpretation:
- **Total revenue by gender**: Female = 232,840, Male = 223,160 → spending is almost equal (F: 51%, M: 49%).
- **Females**: Spend most on Clothing, followed by Electronics.
- **Males**: Spend most on Electronics, followed by Clothing.
- Both genders allocate similar proportions across all three categories, showing neither gender is limited to one type of product.
- This indicates wide product appeal across demographics, making both male and female audiences important for marketing strategies.

Query 3
Interpretation:
- **Under 25**: Beauty dominates → younger shoppers likely focus on self-care.
- **26–34**: Clothing dominates → fits lifestyle of working adults who update wardrobes more often.
- **35–44 & 55+**: Electronics lead → higher spending capacity and interest in practical, durable goods.
- Each age group shows a distinct preference, meaning targeted promotions can be more effective than generalized ones

Query 4
Interpretation:
- **Highest month:** May (Q2), followed by October–December (Q4).
- **Lowest months:** March and September.
- This suggests two revenue peaks: one midyear and one during the holiday season with sales dips before each major buying cycle.
- These fluctuations signal strong seasonality which is typical for retail operations.

Query 5
- **Q4 (Oct–Dec)** is the strongest quarter — clear evidence of holiday season peaks.
- **Q2 (Apr–Jun)** follows closely — possibly linked to spring collections and midyear promotions.
- **Q3 (Jul–Sep)** lags behind, likely due to slower consumer activity in summer months.
- This confirms noticeable seasonal revenue cycles with high potential for campaign planning and inventory forecasting.


