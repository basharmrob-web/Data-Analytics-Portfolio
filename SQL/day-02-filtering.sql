-- ==========================================
-- Day 02: Filtering and Sorting in SQL
-- ==========================================

-- 1. إنشاء الجدول الافتراضي Products
CREATE TABLE Products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock INT,
    rating FLOAT
);

-- 2. إدخال بيانات تجريبية (Mock Data)
INSERT INTO Products (id, name, category, price, stock, rating) VALUES
(1, 'Laptop Pro', 'Electronics', 1200.00, 15, 4.8),
(2, 'Wireless Mouse', 'Electronics', 25.50, 100, 4.3),
(3, 'Cotton T-Shirt', 'Clothing', 15.00, 200, 4.0),
(4, 'JavaScript Guide', 'Books', 40.00, 50, 4.7),
(5, 'Bluetooth Speaker', 'Electronics', 75.00, 30, 4.5),
(6, 'Running Shoes', 'Clothing', 80.00, 60, 4.2),
(7, 'SQL for Beginners', 'Books', 30.00, 40, 4.6),
(8, 'Smartphone', 'Electronics', 900.00, 25, 4.9);


-- ==========================================
-- الاستعلامات (Queries)
-- ==========================================

-- Query 1: Electronics ordered by price ASC
SELECT name, category, price 
FROM Products 
WHERE category = 'Electronics' 
ORDER BY price ASC;

-- Query 2: Stock less than 50 ordered by rating DESC
SELECT name, stock, rating 
FROM Products 
WHERE stock < 50 
ORDER BY rating DESC;

-- Query 3: Price between 20 and 100 ordered by price DESC
SELECT name, price, category 
FROM Products 
WHERE price BETWEEN 20 AND 100 
ORDER BY price DESC;

-- Query 4: Category in Books or Clothing ordered by name ASC
SELECT name, category, rating 
FROM Products 
WHERE category IN ('Books', 'Clothing') 
ORDER BY name ASC;

-- Query 5: Name starts with 'S' ordered by stock DESC
SELECT * 
FROM Products 
WHERE name LIKE 'S%' 
ORDER BY stock DESC;

-- Query 6: Price > 50 and rating >= 4.5 ordered by price ASC
SELECT name, price 
FROM Products 
WHERE price > 50 AND rating >= 4.5 
ORDER BY price ASC;

-- Query 7: Electronics and stock >= 50 ordered by rating DESC
SELECT name, category, stock, rating 
FROM Products 
WHERE category = 'Electronics' AND stock >= 50 
ORDER BY rating DESC;
