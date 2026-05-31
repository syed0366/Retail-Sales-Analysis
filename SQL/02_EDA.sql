
-- 1. Revenue by Category
SELECT
    product_category,
    SUM(total_amount) AS revenue
FROM sales
GROUP BY product_category
ORDER BY revenue DESC;

-- 2. Quantity Sold by Category
SELECT
    product_category,
    SUM(quantity) AS units_sold
FROM sales
GROUP BY product_category
ORDER BY units_sold DESC;

-- 3. Revenue by Gender
SELECT
    gender,
    SUM(total_amount) AS revenue
FROM sales
GROUP BY gender;

-- 4. Average Spend by Gender
SELECT
    gender,
    ROUND(AVG(total_amount),2) AS avg_spend
FROM sales
GROUP BY gender;

-- Age Group Analysis.
SELECT
age,
SUM(total_amount) AS revenue
FROM sales
GROUP BY age
ORDER BY revenue DESC;