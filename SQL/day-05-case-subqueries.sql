-- ==========================================================
-- Day 05: Classifying Orders (Simplified Version)
-- ==========================================================

-- 1. بنحسب المتوسط الأول لوحده ونسميه avg_table
WITH OrderAverage AS (
    SELECT AVG(total_amount) AS avg_amount 
    FROM orders
)

-- 2. بنستخدم المتوسط ده بسهولة في تصنيف الطلبات
SELECT 
    order_id,
    customer_id,
    total_amount,
    CASE 
        WHEN total_amount < avg_amount * 0.75 THEN 'Low Value'
        WHEN total_amount <= avg_amount * 1.5 THEN 'Medium Value'
        ELSE 'High Value'
    END AS order_classification
FROM 
    orders, OrderAverage
ORDER BY 
    total_amount DESC;
