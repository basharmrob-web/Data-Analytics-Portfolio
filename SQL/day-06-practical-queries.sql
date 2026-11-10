-- ==========================================================
-- Day 06: Practical SQL Queries (Dates, Text Functions & Formatting)
-- Deliverable file containing well-commented practical queries.
-- ==========================================================


-- ==========================================================
-- Query 1: Monthly Sales Summary
-- What it answers: How much total revenue and how many orders 
--                  did we generate in each month and year?
-- ==========================================================
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    COUNT(order_id) AS total_orders_count,
    SUM(total_amount) AS total_monthly_revenue
FROM 
    orders
GROUP BY 
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    order_year DESC, 
    order_month DESC;


-- ==========================================================
-- Query 2: Cleaned Customer Directory
-- What it answers: What do our customer names look like when 
--                  we remove extra spaces, standardize text, and 
--                  calculate the length and registration year of each?
-- ==========================================================
SELECT 
    customer_id AS id,
    TRIM(customer_name) AS clean_name,
    LOWER(customer_name) AS lowercase_name,
    LENGTH(TRIM(customer_name)) AS name_character_count,
    EXTRACT(YEAR FROM join_date) AS registration_year
FROM 
    customers
WHERE 
    status = 'Active'
ORDER BY 
    name_character_count DESC;


-- ==========================================================
-- Query 3: Recent Orders Filter
-- What it answers: Which high-value orders were placed recently 
--                  (e.g., in the year 2025), sorted from newest to oldest?
-- ==========================================================
SELECT 
    order_id,
    customer_id,
    total_amount,
    order_date
FROM 
    orders
WHERE 
    EXTRACT(YEAR FROM order_date) = 2025
    AND total_amount > 100
ORDER BY 
    order_date DESC;
