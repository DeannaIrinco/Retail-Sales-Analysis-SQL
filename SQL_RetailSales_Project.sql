-- Retail Sales Analysis using Core SQL Aggregations
-- Skills Used: SELECT, WHERE, GROUP BY, ORDER BY, ALIASING (AS), SUM, CASE, WINDOW FUNCTIONS (OVER, PARTITION BY)

-- I first explored the dataset structure and variables to understand what information was available for analysis. 
-- This allowed me to identify key fields which are critical for answering business questions

-- Questions I aimed to answer:
-- (1) Which product categories generate the most revenue?
-- (2) Which products sell best to different genders or age groups?
-- (3) How does revenue vary by month?
-- (4) Are there seasonal trends in sales?

-- Revenue by Product Category
SELECT 
	Product_Category,
	SUM(Total_Amount) as total_revenue
FROM retail_sales_dataset
GROUP BY Product_Category
ORDER BY total_revenue DESC;

-- Revenue by Gender, Product Category, and Revenue
SELECT 
	Gender,
    Product_Category,
	SUM(Total_Amount) AS total_revenue_per_product_category,
    SUM(SUM(Total_Amount)) OVER (PARTITION BY Gender) AS total_revenue_per_gender
FROM retail_sales_dataset
GROUP BY Gender, Product_Category
ORDER BY Gender, total_revenue_per_product_category DESC;

-- Revenue by Age Group, Product Category, and Revenue
SELECT 
	Age_Group,
    Product_Category,
	SUM(Total_Amount) AS revenue_per_product_category,
    SUM(SUM(Total_Amount)) OVER (PARTITION BY Age_Group) AS total_revenue_per_age_group
FROM retail_sales_dataset
GROUP BY Age_Group, Product_Category
ORDER BY Age_Group, revenue_per_product_category DESC;


-- Monthly Revenue by Product Category
SELECT
	Month,
    Product_Category,
    SUM(Total_Amount) AS monthly_revenue_per_product_category,
    SUM(Sum(Total_Amount))OVER (PARTITION by Month) AS total_monthly_revenue
FROM retail_sales_dataset 
GROUP BY Month, Product_Category
Order By Month, monthly_revenue_per_product_category DESC;

-- Quarterly Revenue
SELECT
    CASE
        WHEN Month IN ('January','February','March') THEN 'Q1'
        WHEN Month IN ('April','May','June') THEN 'Q2'
        WHEN Month IN ('July','August','September') THEN 'Q3'
        WHEN Month IN ('October','November','December') THEN 'Q4'
    END AS Quarter,
    SUM(Total_Amount) AS quarterly_revenue
FROM retail_sales_dataset
GROUP BY Quarter
ORDER BY quarterly_revenue DESC;
