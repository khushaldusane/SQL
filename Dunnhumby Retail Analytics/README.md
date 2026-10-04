# Dunnhumby Retail Analytics — SQL Analysis

## Project Overview

This project focuses on analyzing **Dunnhumby retail transaction data using MySQL** to uncover customer purchasing behavior, product performance, and transaction-level business insights.

The analysis covers SQL queries ranging from basic data exploration to advanced analytical queries, followed by interpretation of the results from a business perspective.

The objective was not only to write SQL queries, but also to understand **what the data reveals and how the insights can support retail business decisions**.

---

## Business Objectives

The analysis aims to answer key retail business questions such as:

- How large is the customer and transaction base?
- What are the purchasing patterns of customers?
- Which products are purchased most frequently?
- Which customers contribute significantly to transaction activity?
- How do products perform across different metrics?
- What trends and patterns can be identified from transaction data?
- What actionable insights can be derived from the dataset?

---

## Dataset

The project uses the **Dunnhumby retail dataset**, containing transaction-level information along with product and coupon data.

### Dataset Files

| File | Description |
|------|-------------|
| `transaction_data.csv` | Customer transaction and product purchase data |
| `product.csv` | Product-related information |
| `coupon.csv` | Coupon and promotional information |

The complete transaction dataset contains approximately **2.6 million records** and was analyzed locally using MySQL.

> **Note:** The complete transaction dataset is not included in this repository because of GitHub's file-size limitations. A smaller sample dataset can be included for demonstration purposes.

---

## Tools & Technologies

- **MySQL**
- **SQL**
- **Git & GitHub**

---

## SQL Concepts Used

The project demonstrates practical application of:

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- Aggregate Functions
- `CASE WHEN`
- `JOIN`
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- Ranking
- Conditional Aggregation
- Date-based Analysis

---

## Analysis Approach

### 1. Data Exploration

The dataset was initially explored to understand its structure, columns, customers, products, transactions, and overall data distribution.

### 2. Customer Analysis

Customer-level analysis was performed to understand:

- Customer transaction activity
- Purchasing frequency
- Customer purchasing behavior
- Customer contribution to transactions

### 3. Product Analysis

Product-level analysis was performed to identify:

- Frequently purchased products
- Product performance
- Product rankings
- Purchasing patterns

### 4. Transaction Analysis

Transaction-level analysis was performed to identify:

- Transaction patterns
- Purchase frequency
- Customer-product relationships
- Trends within the transaction history

### 5. Advanced SQL Analysis

Advanced SQL techniques were applied to answer more complex business questions using:

- CTEs
- Subqueries
- Joins
- Window Functions
- Ranking
- Conditional Aggregation

---

## Project Structure

```text
Dunnhumby Retail Analytics/
│
├── transaction_data_sample.csv
├── product.csv
├── coupon.csv
├── README.md
└── Presentation.pdf
