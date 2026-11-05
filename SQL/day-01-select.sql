-- Data-Analytics-Portfolio / SQL / day-01-select.sql

-- 1. إنشاء جدول الموظفين
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    Age INT
);

-- 2. إدخال بيانات تجريبية
INSERT INTO Employees (EmployeeID, Name, Department, Salary, Age) VALUES
(1, 'أحمد', 'HR', 5000.00, 28),
(2, 'سارة', 'IT', 7000.00, 32),
(3, 'علي', 'IT', 6500.00, 25),
(4, 'مريم', 'Finance', 8000.00, 40),
(5, 'خالد', 'HR', 4500.00, 30);

-- 3. الاستعلامات الخمسة المطلوبة (5 SELECT Queries)

-- Query 1: عرض جميع بيانات الجدول
SELECT * FROM Employees;

-- Query 2: عرض أسماء الموظفين والأقسام فقط
SELECT Name, Department FROM Employees;

-- Query 3: فلترة الموظفين حسب قسم الـ IT
SELECT * FROM Employees 
WHERE Department = 'IT';

-- Query 4: عرض الموظفين الذين تزيد رواتبهم عن 5000 بترتيب تنازلي
SELECT Name, Salary FROM Employees 
WHERE Salary > 5000 
ORDER BY Salary DESC;

-- Query 5: حساب متوسط رواتب الموظفين
SELECT AVG(Salary) AS AverageSalary FROM Employees;
