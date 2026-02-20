-- Retail Sales Analysis using Core SQL Aggregations
-- Skills Used: SELECT, WHERE, GROUP BY, ORDER BY, ALIASING (AS), SUM

-- I first explored the dataset structure and variables to understand what information was available for analysis. This allowed me to identify key fields which are critical for answering business questions
-- Questions I aimed to answer: (1) Which product categories generate the most revenue? (2) Which products sell best to different genders or age groups? (3)How does revenue vary by month? (4)Are there seasonal trends in sales?


-- Revenue by Product Category
SELECT 
	Product_Category,
	SUM(Total_Amount) as total_revenue
FROM retail_sales_dataset
GROUP BY Product_Category
ORDER BY total_revenue DESC;

-- Revenue by Gender 
SELECT 
	Gender,
	SUM(Total_Amount) AS total_revenue
FROM retail_sales_dataset
GROUP BY Gender;

-- Revenue by Age Group
SELECT 
	Age_Group,
	SUM(Total_Amount) AS total_revenue
FROM retail_sales_dataset
GROUP BY Age_Group;

-- Revenue by Product Category for Female Customers
SELECT 
    Product_Category,
    SUM(Total_Amount) AS total_revenue
FROM retail_sales_dataset
WHERE Gender = 'Female'
GROUP BY Product_Category
ORDER BY total_revenue DESC;

-- Revenue by Product Category for Male Customers
SELECT 
    Product_Category,
    SUM(Total_Amount) AS total_revenue
FROM retail_sales_dataset
WHERE Gender = 'Male'
GROUP BY Product_Category
ORDER BY total_revenue DESC;


-- Revenue by Product Category, Gender, and Age Group
SELECT 
	Gender,
    Product_Category,
	SUM(Total_Amount) AS total_revenue
FROM retail_sales_dataset
GROUP BY Gender, Product_Category 
ORDER BY GENDER DESC;

-- Monthly Revenue Trend
SELECT
	Month,
    SUM(Total_Amount) as monthly_revenue
FROM retail_sales_dataset 
GROUP BY Month
Order By monthly_revenue DESC;

-- Monthly Revenue by Product Category
SELECT
	Month,
    Product_Category,
    SUM(Total_Amount) as monthly_revenue
FROM retail_sales_dataset 
GROUP BY Month, Product_Category
Order By Month, monthly_revenue DESC;

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
