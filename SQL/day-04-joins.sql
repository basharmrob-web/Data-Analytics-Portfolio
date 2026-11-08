# 📊 SQL Joins Reference Guide

This reference guide covers the **6 core types of SQL Joins** using a practical `customers` and `orders` database model. It explains how each join handles **unmatched rows** between tables.

---

## 🗄️ Database Schema Overview

We assume two related tables linked by `customer_id`:

- **`customers`** (`customer_id`, `customer_name`, `email`)
- **`orders`** (`order_id`, `customer_id`, `order_date`, `total_amount`)

---

## 🚀 6 SQL Join Queries & Unmatched Row Behavior

### 1. `INNER JOIN`
* **Unmatched Rows:** **Excluded** from both tables.
* **Description:** Returns only the records that have matching values in both tables.

```sql
SELECT 
    c.customer_id, 
    c.customer_name, 
    o.order_id, 
    o.order_date
FROM customers c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id;
"""""""""""""
  SELECT 
    c.customer_name, 
    o.order_id, 
    o.order_date
FROM customers c
RIGHT JOIN orders o 
    ON c.customer_id = o.customer_id;
"""""""""""""
SELECT 
    c.customer_id, 
    c.customer_name, 
    o.order_id, 
    o.order_date
FROM customers c
FULL OUTER JOIN orders o 
    ON c.customer_id = o.customer_id;
"""""""""""""
SELECT 
    c.customer_id, 
    c.customer_name, 
    o.order_id
FROM customers c
CROSS JOIN orders o;
