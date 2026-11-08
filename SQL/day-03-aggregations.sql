-- ====================================================================
-- Deliverable: day-03-aggregations.sql
-- Topic: Data Aggregation, Filtering (WHERE vs. HAVING), and Grouping
-- ====================================================================

-- 1. Total Sales
-- Calculates the overall revenue across all orders.
SELECT SUM(TotalAmount) AS TotalSales
FROM Orders;


-- 2. Average Order Value
-- Finds the mean value of all orders placed.
SELECT AVG(TotalAmount) AS AverageOrderValue
FROM Orders;


-- 3. Total Number of Orders
-- Counts how many total orders exist in the table.
SELECT COUNT(OrderID) AS NumberOfOrders
FROM Orders;


-- 4. Sales by Category (Basic GROUP BY)
-- Groups rows by product category and sums the total revenue for each.
SELECT Category, SUM(TotalSales) AS CategorySales
FROM Sales
GROUP BY Category;


-- 5. Filtering Rows BEFORE Grouping (WHERE)
-- First filters out orders from the 'Electronics' category, then groups the rest.
SELECT Category, SUM(TotalSales) AS CategorySales
FROM Sales
WHERE Category <> 'Electronics'
GROUP BY Category;


-- 6. Filtering Groups AFTER Grouping (HAVING)
-- Groups by category, then uses HAVING to keep only categories with total sales > 10,000.
SELECT Category, SUM(TotalSales) AS CategorySales
FROM Sales
GROUP BY Category
HAVING SUM(TotalSales) > 10000;


-- 7. Combining WHERE and HAVING in a Single Query
-- Step 1 (WHERE): Keeps only orders where quantity is greater than 1.
-- Step 2 (GROUP BY & SUM): Aggregates sales per category for those filtered rows.
-- Step 3 (HAVING): Keeps only categories where the filtered sales exceed 5,000.
SELECT Category, SUM(TotalSales) AS CategorySales
FROM Sales
WHERE Quantity > 1
GROUP BY Category
HAVING SUM(TotalSales) > 5000;


-- 8. Counting and Grouping with a Threshold (HAVING with COUNT)
-- Finds categories that have more than 5 products registered.
SELECT Category, COUNT(ProductID) AS NumberOfProducts
FROM Products
GROUP BY Category
Having COUNT(ProductID) > 5;
