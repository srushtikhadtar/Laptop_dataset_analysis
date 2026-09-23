CREATE DATABASE Laptop;

USE laptop;

SHOW TABLES;

-- Find Unique Laptop Brands
SELECT DISTINCT brand
FROM data;


-- Find Unique Operating Systems
SELECT DISTINCT OS
FROM data;


-- Find Total Number of Laptops
SELECT COUNT(*) AS Total_Laptops
FROM data;


-- Find Average Laptop Price
SELECT AVG(price) AS Average_Price
FROM data;


-- Find Minimum and Maximum Laptop Price
SELECT MIN(price) AS Minimum_Price,
       MAX(price) AS Maximum_Price
FROM data;


-- Check Laptop Count by Brand
SELECT brand, COUNT(*) AS Total_Laptops
FROM data
GROUP BY brand;


-- Check Average Price by Brand
SELECT brand, AVG(price) AS Average_Price
FROM data
GROUP BY brand;


-- Find Laptops Above 50000 Price
SELECT name, brand, price
FROM data
WHERE price > 50000;


-- Find Top 5 Most Expensive Laptops
SELECT name, brand, price
FROM data
ORDER BY price DESC
LIMIT 5;


-- Find Highest Specification Rating
SELECT MAX(spec_rating) AS Highest_Rating
FROM data;



