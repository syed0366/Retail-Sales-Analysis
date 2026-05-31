-- Business_Analysis

-- Top 10 Customers by Revenue
SELECT
    customer_id,
    SUM(total_amount) AS total_revenue
FROM sales
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 10;

-- Monthly Revenue Trend
SELECT
    DATE_FORMAT(
        STR_TO_DATE(sale_date, '%d-%m-%Y'),
        '%Y-%m'
    ) AS month,
    SUM(total_amount) AS revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Best Selling Products
SELECT
    product_category,
    SUM(quantity) AS total_units_sold
FROM sales
GROUP BY product_category
ORDER BY total_units_sold DESC;

-- Average Order Value by Category

SELECT
    product_category,
    ROUND(AVG(total_amount),2) AS avg_order_value
FROM sales
GROUP BY product_category;


-- Revenue by Age Group
SELECT
CASE
    WHEN age < 20 THEN 'Below 20'
    WHEN age BETWEEN 20 AND 29 THEN '20-29'
    WHEN age BETWEEN 30 AND 39 THEN '30-39'
    WHEN age BETWEEN 40 AND 49 THEN '40-49'
    ELSE '50+'
END AS age_group,

COUNT(*) AS customers,
SUM(total_amount) AS revenue

FROM sales

GROUP BY age_group

ORDER BY revenue DESC;

-- Gender Preference by Category
SELECT
    gender,
    product_category,
    COUNT(*) AS orders_count
FROM sales
GROUP BY gender, product_category
ORDER BY orders_count DESC;



