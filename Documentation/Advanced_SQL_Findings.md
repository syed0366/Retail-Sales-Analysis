# Advanced SQL Findings

## Overview

This file demonstrates advanced SQL concepts including Window Functions, Ranking Functions, Subqueries, and Common Table Expressions (CTEs) using the Retail Sales dataset.

---

## 1. Customer Revenue Ranking (RANK)

### Objective

Rank customers based on their total revenue contribution.

### SQL Concept Used

* Window Function
* RANK()

### Key Insight

* Identified top-performing customers based on total spending.
* Useful for customer segmentation and loyalty programs.

---

## 2. Category Revenue Ranking (DENSE_RANK)

### Objective

Rank product categories by revenue generated.

### SQL Concept Used

* Window Function
* DENSE_RANK()

### Key Insight

* Determined the highest revenue-generating categories.
* Supports inventory and marketing decisions.

---

## 3. Running Revenue Trend

### Objective

Calculate cumulative revenue over time.

### SQL Concept Used

* Window Function
* Running Total

### Key Insight

* Tracks revenue growth month by month.
* Useful for monitoring business performance trends.

---

## 4. Customers Spending Above Average

### Objective

Identify customers whose spending exceeds the overall average transaction value.

### SQL Concept Used

* Subquery
* HAVING Clause

### Key Insight

* Highlights high-value customers.
* Helps target premium marketing campaigns.

---

## 5. High Revenue Customers Using CTE

### Objective

Filter customers generating significant revenue using a Common Table Expression.

### SQL Concept Used

* CTE (Common Table Expression)

### Key Insight

* Simplifies complex queries.
* Improves readability and maintainability.
* Useful for advanced reporting and analytics.

---

## Conclusion

The Advanced SQL analysis demonstrates practical use of:

* Window Functions
* RANK()
* DENSE_RANK()
* Running Totals
* Subqueries
* Common Table Expressions (CTEs)

These techniques are widely used in real-world data analytics, business intelligence, and reporting projects.
