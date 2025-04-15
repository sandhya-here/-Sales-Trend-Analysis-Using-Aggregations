-- sales_trend_analysis.sql
-- Monthly Sales Trend Analysis from Sample Superstore Dataset

SELECT 
    STRFTIME('%Y', "Order Date") AS Year,
    STRFTIME('%m', "Order Date") AS Month,
    SUM(Sales) AS Total_Revenue,
    COUNT(DISTINCT "Order ID") AS Order_Volume
FROM 
    sample_superstore
GROUP BY 
    Year, Month
ORDER BY 
    Year, Month;
