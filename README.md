# Retail Sales Analysis
## Project Summary
This project analyzes retail sales performance using SQL to uncover trends in product revenue, customer demographics, and seasonal fluctuations. The analysis explores key business questions such as which products generate the most revenue, how purchasing behavior varies by gender and age group, and when sales peak throughout the year. Using aggregated queries and data validation in Excel, this project demonstrates how SQL-based analysis can provide actionable insights for marketing strategy, inventory planning, and revenue forecasting.

The dataset used in this project was obtained from Kaggle: [Retail Sales Dataset by Mohammad Talib](https://www.kaggle.com/datasets/mohammadtalib786/retail-sales-dataset)

This dataset contains transaction-level sales data across three product categories: Beauty, Clothing, and Electronics

## Tableau Dashboard

The results of this SQL analysis are also visualized in an interactive Tableau Public dashboard: [Retail Sales Analysis Dashboard](https://public.tableau.com/app/profile/deanna.irinco/viz/RetailSalesAnalysis_17719769759040/Dashboard1)



## Data Preparation

The original dataset from Kaggle was already clean. The following steps were performed in Microsoft Excel to validate and enrich the data for analysis:

1. **Validation Checks**
   - Checked for duplicate transactions.
   - Verified that `Total_Amount` matches the `Quantity × Price_per_Unit`.
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

# Insights with the Query

## **Query 1**
<img width="848" height="144" alt="Screenshot 2026-02-21 at 11 22 23 AM" src="https://github.com/user-attachments/assets/82825e33-7f82-43e7-af78-53864ed4e861" />

**Result:**

<img width="292" height="200" alt="Screenshot 2026-02-21 at 11 23 28 AM" src="https://github.com/user-attachments/assets/759dfb13-e59f-4b4d-b8d1-bef800193285" />

**Interpretation:**
- **Electronics** lead the market with the highest total revenue
- **Clothing** is close behind. This is another core driver of income
- **Beauty** contributes slightly less but still remains a valuable part revenue
- No single category dominates. This suggests that there is a balanced and healthy sales mix


## **Query 2**

<img width="785" height="190" alt="Screenshot 2026-02-21 at 11 26 18 AM" src="https://github.com/user-attachments/assets/2dc2b4c5-5669-4130-8b15-aef0826b624b" />

**Result**

<img width="596" height="133" alt="Screenshot 2026-02-21 at 11 26 34 AM" src="https://github.com/user-attachments/assets/1f29b5e6-4a57-4f1f-b8fa-33a675ce4966" />


**Interpretation:**
- **Total revenue by gender**: Female=232,840, Male=223,160 → spending is almost equal (F: 51%, M: 49%)
- **Females**: Spend most on Clothing, followed by Electronics
- **Males**: Spend most on Electronics, followed by Clothing
- Both genders spend similar amounts across all three categories, showing that neither gender focuses on only one type of product
- This indicates wide product appeal across demographics which makes both male and female audiences important for marketing strategies


## **Query 3**

<img width="774" height="191" alt="Screenshot 2026-02-21 at 11 30 05 AM" src="https://github.com/user-attachments/assets/430ea759-f1e7-443c-8bda-1e5559791803" />


**Result:**

<img width="549" height="279" alt="Screenshot 2026-02-21 at 11 28 37 AM" src="https://github.com/user-attachments/assets/28c2b3d1-09ed-44cc-b5ff-536f78608574" />


**Interpretation:**
- **Under 25**: Beauty dominates → younger shoppers more likely focus to on self-care
- **26–34**: Clothing dominates → fits lifestyle of working adults who update wardrobes more often
- **35–44 & 55+**: Electronics lead → higher spending capacity and interest in practical and durable goods
- Distinct preferences across age groups suggest that targeted promotions would work better than generalized ones


## **Query 4**

<img width="686" height="190" alt="Screenshot 2026-02-21 at 11 31 01 AM" src="https://github.com/user-attachments/assets/ad424bd8-1487-4a98-be0a-8abaf18841c9" />

**Result**

<img width="525" height="387" alt="Screenshot 2026-02-21 at 11 34 51 AM" src="https://github.com/user-attachments/assets/d26a3e44-8379-4bb2-be48-9f338615dada" />


<img width="527" height="185" alt="Screenshot 2026-02-21 at 11 33 03 AM" src="https://github.com/user-attachments/assets/d4ed01dc-0d22-4af9-a0ff-882e33ee4865" />



**Interpretation:**
- **Highest month:** May (Q2), followed by October–December (Q4).
- **Lowest months:** March and September.
- This suggests two revenue peaks: one midyear and one during the holiday season with sales dips before each major buying cycle
- These fluctuations signal strong seasonality which is typical for retail operations


## **Query 5**

<img width="598" height="256" alt="Screenshot 2026-02-21 at 11 37 34 AM" src="https://github.com/user-attachments/assets/eb5bad2a-bcbe-41dc-b313-9ed68f8df4f9" />


**Result**

<img width="198" height="99" alt="Screenshot 2026-02-21 at 11 37 43 AM" src="https://github.com/user-attachments/assets/734a4e6e-dc2b-433e-b539-10b160cba8ef" />

**Interpretation:**
- **Q4 (Oct–Dec)** is the strongest quarter. This is a clear evidence of holiday season peaks
- **Q2 (Apr–Jun)** follows closely. This is possibly linked to spring collections and midyear promotions
- **Q1 (January–March)** maintains solid performance. This suggests a steady post-holiday recovery period
- **Q3 (Jul–Sep)** lags behind. This is likely due to slower consumer activity in summer months
- The results show clear seasonal revenue cycles useful for planning campaigns and forecasting inventory

# Overall Recommendation
Based on the data, the business demonstrates strong and consistent performance across multiple product categories and customer segments. 

Revenue is evenly distributed among Electronics, Clothing, and Beauty. This indicates that there is a balanced product portfolio that does not rely too heavily on a single line. 

Customer segmentation reveals actionable opportunities:
- Gender: Females contribute slightly more revenue (51%) and favor Clothing, while males lean toward Electronics.
- Age: Younger customers (Under 25) prefer Beauty, mid-age groups (26–44) favor Clothing and Electronics, and older customers (55+) focus on Electronics.

Seasonal trends reveal revenue peaks in Q2 (April–June) and Q4 (October–December), aligning with mid-year promotions and holiday shopping periods. Conversely, Q3 (July–September) shows lower spending activity. This suggests that there is a need for strategic interventions to sustain sales during slower months.

**To strengthen performance, the business should:**

* Optimize inventory and marketing campaigns before Q2 and Q4 to ensure that there is stock availability for high-demand products (especially Electronics and Clothing)

* Implement demographic-specific campaigns: promote Beauty products to younger customers via social platforms and/or lifestyle messaging, Electronics to older demographics to emphasize quality and value, and Clothing through both fashion-oriented and practical messaging.

* Introduce promotional offers in Q3 to maintain engagement during off-peak periods, such as discounts or loyalty rewards.

* By using these insights to guide marketing strategies, the company can maintain steady revenue, retain more customers, and increase profitability across all product segments.


