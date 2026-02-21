# Retail Sales Analysis SQL
Analysis of retail sales trends using SQL queries to explore revenue by category, gender, and age group.

The dataset used in this project was obtained from Kaggle:
https://www.kaggle.com/datasets/mohammadtalib786/retail-sales-dataset

This data set contains transaciton-level sales data that revolves around three product category: Beauty, Clothes, Electronics

## Data Preparation

The original dataset from Kaggle was already clean. The following steps were performed in Microsoft Excel to validate and enrich the data for analysis:

1. **Validation Checks**
   - Checked for duplicate transactions.
   - Verified that `Total_Amount` matches `Quantity × Price_per_Unit`.
   - Confirmed that the `Date` column is in a consistent date format.
   - Checked for spelling errors in all categorical columns (`Gender`, `Product_Category`).

2. **Enrichment**
   - Added an `Age_Group` column based on `Age` to categorize customers (Under 25, 26-34, 35-44,45-54, 55+).
   - Extracted `Month` from the `Date` column to analyze monthly and seasonal trends.


## Business Questions
With the given datasets, the SQL analysis in this project aims to answer the following business questions:
1. Which product categories generate the most revenue?
2. Which product categories sell best to different genders or age groups?
3. How does revenue vary by month?
4. Are there seasonal trends in sales?


----------------------------------------------------------------------------------------------------

## Insights with the Query

**Query 1**
<img width="848" height="144" alt="Screenshot 2026-02-21 at 11 22 23 AM" src="https://github.com/user-attachments/assets/82825e33-7f82-43e7-af78-53864ed4e861" />

**Result:**

<img width="292" height="200" alt="Screenshot 2026-02-21 at 11 23 28 AM" src="https://github.com/user-attachments/assets/759dfb13-e59f-4b4d-b8d1-bef800193285" />

**Interpretation:**
- **Electronics** lead the market with the highest total revenue.
- **Clothing** is close behind, making it another core driver of income.
- **Beauty** contributes slightly less, but still remains a valuable part revenue.
- No single category dominates. This suggests a balanced sales portfolio.

**Query 2**

<img width="785" height="190" alt="Screenshot 2026-02-21 at 11 26 18 AM" src="https://github.com/user-attachments/assets/2dc2b4c5-5669-4130-8b15-aef0826b624b" />

**Result**

<img width="596" height="133" alt="Screenshot 2026-02-21 at 11 26 34 AM" src="https://github.com/user-attachments/assets/1f29b5e6-4a57-4f1f-b8fa-33a675ce4966" />


**Interpretation:**
- **Total revenue by gender**: Female = 232,840, Male = 223,160 → spending is almost equal (F: 51%, M: 49%).
- **Females**: Spend most on Clothing, followed by Electronics.
- **Males**: Spend most on Electronics, followed by Clothing.
- Both genders allocate similar proportions across all three categories, showing neither gender is limited to one type of product.
- This indicates wide product appeal across demographics, making both male and female audiences important for marketing strategies.

**Query 3**

<img width="774" height="191" alt="Screenshot 2026-02-21 at 11 30 05 AM" src="https://github.com/user-attachments/assets/430ea759-f1e7-443c-8bda-1e5559791803" />


**Result:**

<img width="549" height="279" alt="Screenshot 2026-02-21 at 11 28 37 AM" src="https://github.com/user-attachments/assets/28c2b3d1-09ed-44cc-b5ff-536f78608574" />


**Interpretation:**
- **Under 25**: Beauty dominates → younger shoppers likely focus on self-care.
- **26–34**: Clothing dominates → fits lifestyle of working adults who update wardrobes more often.
- **35–44 & 55+**: Electronics lead → higher spending capacity and interest in practical, durable goods.
- Each age group shows a distinct preference, meaning targeted promotions can be more effective than generalized ones

**Query 4**

<img width="686" height="190" alt="Screenshot 2026-02-21 at 11 31 01 AM" src="https://github.com/user-attachments/assets/ad424bd8-1487-4a98-be0a-8abaf18841c9" />

**Result**

<img width="525" height="387" alt="Screenshot 2026-02-21 at 11 34 51 AM" src="https://github.com/user-attachments/assets/d26a3e44-8379-4bb2-be48-9f338615dada" />


<img width="527" height="185" alt="Screenshot 2026-02-21 at 11 33 03 AM" src="https://github.com/user-attachments/assets/d4ed01dc-0d22-4af9-a0ff-882e33ee4865" />



**Interpretation:**
- **Highest month:** May (Q2), followed by October–December (Q4).
- **Lowest months:** March and September.
- This suggests two revenue peaks: one midyear and one during the holiday season with sales dips before each major buying cycle.
- These fluctuations signal strong seasonality which is typical for retail operations.

**Query 5**

<img width="598" height="256" alt="Screenshot 2026-02-21 at 11 37 34 AM" src="https://github.com/user-attachments/assets/eb5bad2a-bcbe-41dc-b313-9ed68f8df4f9" />


**Result**

<img width="198" height="99" alt="Screenshot 2026-02-21 at 11 37 43 AM" src="https://github.com/user-attachments/assets/734a4e6e-dc2b-433e-b539-10b160cba8ef" />

**Interpretation:**
- **Q4 (Oct–Dec)** is the strongest quarter — clear evidence of holiday season peaks.
- **Q2 (Apr–Jun)** follows closely — possibly linked to spring collections and midyear promotions.
- **Q3 (Jul–Sep)** lags behind, likely due to slower consumer activity in summer months.
- This confirms noticeable seasonal revenue cycles with high potential for campaign planning and inventory forecasting.


