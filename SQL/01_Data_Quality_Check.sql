-- 01_Data_Quality_Check.sql

-- 1. Missing Values Check
SELECT COUNT(*) AS missing_customer_id
FROM sales
WHERE customer_id IS NULL;

SELECT COUNT(*) AS missing_gender
FROM sales
WHERE gender IS NULL;

SELECT COUNT(*) AS missing_age
FROM sales
WHERE age IS NULL;

SELECT COUNT(*) AS missing_sale_date
FROM sales
WHERE sale_date IS NULL;

SELECT COUNT(*) AS missing_product_category
FROM sales
WHERE product_category IS NULL;

-- 2. Duplicate Transaction Check
SELECT
transaction_id,
COUNT(*) AS duplicate_count
FROM sales
GROUP BY transaction_id
HAVING COUNT(*) > 1;

-- 3. Invalid Age Check
SELECT *
FROM sales
WHERE age < 0
OR age > 100;

SELECT *
FROM sales
WHERE quantity <= 0;

-- 5. Invalid Revenue Check
SELECT *
FROM sales
WHERE total_amount <= 0;

-- 6. Revenue Validation
-- quantity × price_per_unit = total_amount
SELECT *
FROM sales
WHERE quantity * price_per_unit <> total_amount;

SELECT
COUNT(*) AS total_records,
COUNT(DISTINCT customer_id) AS unique_customers
FROM sales;

ALTER TABLE sales
ADD sale_date_new DATE;
DESCRIBE sales;

UPDATE sales
SET sale_date_new = STR_TO_DATE(sale_date,'%d-%m-%Y');