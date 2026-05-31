-- 04_Advanced_SQL.sql
-- Advanced SQL Concepts
-- Window Functions, Ranking, CTE, Subqueries

-- Query 1 - Customer Revenue Ranking
-- Customer Revenue Ranking

SELECT
    customer_id,
    SUM(total_amount) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(total_amount) DESC
    ) AS customer_rank
FROM sales
GROUP BY customer_id;

-- Query 2 - Category Revenue Ranking
-- Category Revenue Ranking

SELECT
    product_category,
    SUM(total_amount) AS revenue,
    DENSE_RANK() OVER (
        ORDER BY SUM(total_amount) DESC
    ) AS revenue_rank
FROM sales
GROUP BY product_category;


-- Query 3 - Running Revenue
-- Running Revenue Trend
SELECT
    DATE_FORMAT(
        STR_TO_DATE(sale_date,'%d-%m-%Y'),
        '%Y-%m'
    ) AS month,
    SUM(total_amount) AS revenue,
    SUM(SUM(total_amount))
    OVER(
        ORDER BY DATE_FORMAT(
            STR_TO_DATE(sale_date,'%d-%m-%Y'),
            '%Y-%m'
        )
    ) AS cumulative_revenue
FROM sales
GROUP BY month;

-- Query 4 - Subquery
-- Customers Spending Above Average

SELECT
    customer_id,
    SUM(total_amount) AS total_spent
FROM sales
GROUP BY customer_id
HAVING total_spent >
(
    SELECT AVG(total_amount)
    FROM sales
);

-- Query 5 - CTE
-- High Revenue Customers Using CTE

WITH customer_revenue AS
(
    SELECT
        customer_id,
        SUM(total_amount) AS revenue
    FROM sales
    GROUP BY customer_id
)

SELECT *
FROM customer_revenue
WHERE revenue > 1500;