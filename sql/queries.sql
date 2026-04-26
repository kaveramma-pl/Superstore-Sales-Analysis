-- Total Sales by Category

SELECT 
    Category,
    ROUND(SUM(Sales), 0) AS Total_Sales
FROM SampleSuperstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Total Profit by Category

SELECT
    Category,
    ROUND(SUM(Profit), 0) AS Total_Profit
FROM SampleSuperstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Yearly Sales Trend

SELECT
    strftime('%Y', 
        substr(order_date, 7, 4) || '-' ||
        substr(order_date, 1, 2) || '-' ||
        substr(order_date, 4, 2)
    ) AS Year,
    ROUND(SUM(Sales), 0) AS Total_Sales
FROM SampleSuperstore
GROUP BY Year
HAVING Year IS NOT NULL
ORDER BY Year;

-- Category-wise Monthly Sales Trend

SELECT
    strftime('%Y-%m',
        substr(order_date, 7, 4) || '-' ||
        substr(order_date, 1, 2) || '-' ||
        substr(order_date, 4, 2)
    ) AS Year_Month,
    Category,
    ROUND(SUM(Sales), 0) AS Total_Sales
FROM SampleSuperstore
GROUP BY Year_Month, Category
HAVING Year_Month IS NOT NULL
ORDER BY Year_Month;

-- Sales by Sub-Category

SELECT
    sub_category,
    ROUND(SUM(Sales), 0) AS Total_Sales
FROM SampleSuperstore
GROUP BY sub_category
ORDER BY Total_Sales DESC;

-- Top 10 Cities by Sales

SELECT
    City,
    ROUND(SUM(Sales), 0) AS Total_Sales
FROM SampleSuperstore
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top 10 Sub-Categories by Quantity

SELECT
    sub_category,
    SUM(Quantity) AS Total_Quantity
FROM SampleSuperstore
GROUP BY sub_category
ORDER BY Total_Quantity DESC
LIMIT 10;


