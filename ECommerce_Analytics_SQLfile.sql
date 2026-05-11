
-- ===========================================
-- E-Commerce Sales Analytics Project
-- Phase 2 — SQL Analysis
-- ===========================================

CREATE TABLE Orders (
    OrderID INT,
    OrderDate DATE,
    CustomerID VARCHAR(20),
    CustomerName VARCHAR(100),
    Product VARCHAR(100),
    Category VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    TotalPrice DECIMAL(10,2),
    Region VARCHAR(50),
    PaymentMethod VARCHAR(50),
    MarketingChannel VARCHAR(50)
);

-- 1. Total Revenue
SELECT SUM(TotalPrice) AS TotalRevenue
FROM Orders;

-- 2. Total Orders
SELECT COUNT(DISTINCT OrderID) AS TotalOrders
FROM Orders;

-- 3. Average Order Value
SELECT AVG(TotalPrice) AS AverageOrderValue
FROM Orders;

-- 4. Monthly Revenue Trend


SELECT FORMAT([Date], 'yyyy-MM') AS Month,
       SUM(TotalPrice) AS Revenue
FROM Orders
GROUP BY FORMAT([Date], 'yyyy-MM')
ORDER BY Month;

-- 5. Top 10 Products
SELECT TOP 10 Product,
       SUM(Quantity) AS UnitsSold
FROM Orders
GROUP BY Product
ORDER BY UnitsSold DESC;

-- 6. Revenue by Category

SELECT Product,
       SUM(TotalPrice) AS Revenue
FROM Orders
GROUP BY Product
ORDER BY Revenue DESC;

-- 7. Revenue by Region
-- Revenue by Shipping Address

SELECT ShippingAddress,
       SUM(TotalPrice) AS Revenue
FROM Orders
GROUP BY ShippingAddress
ORDER BY Revenue DESC;

-- 8. Best Marketing Channels

SELECT ReferralSource,
       SUM(TotalPrice) AS Revenue

FROM Orders

GROUP BY ReferralSource

ORDER BY Revenue DESC;

-- 9. Payment Method Analysis
SELECT PaymentMethod,
       COUNT(*) AS TotalTransactions
FROM Orders
GROUP BY PaymentMethod
ORDER BY TotalTransactions DESC;

-- 10. Repeat Customers
SELECT CustomerID,
       COUNT(OrderID) AS OrdersCount
FROM Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 1
ORDER BY OrdersCount DESC;

-- 11. Highest Revenue Customers

SELECT TOP 10 CustomerID,
       SUM(TotalPrice) AS Revenue

FROM Orders

GROUP BY CustomerID

ORDER BY Revenue DESC;

-- 12. Average Quantity per Order
SELECT AVG(Quantity) AS AvgQuantity
FROM Orders;

-- 13. Peak Sales Day

SELECT TOP 1 [Date],
       SUM(TotalPrice) AS Revenue

FROM Orders

GROUP BY [Date]

ORDER BY Revenue DESC;

-- 14. Lowest Performing Products
SELECT TOP 10 Product,
       SUM(Quantity) AS UnitsSold
FROM Orders
GROUP BY Product
ORDER BY UnitsSold ASC;


-- 15. Product Contribution Percentage

SELECT Product,
       ROUND(
           SUM(TotalPrice) * 100.0 /
           (SELECT SUM(TotalPrice) FROM Orders),
       2) AS ContributionPercent

FROM Orders

GROUP BY Product

ORDER BY ContributionPercent DESC;
