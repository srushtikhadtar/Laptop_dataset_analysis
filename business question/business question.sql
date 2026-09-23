USE Laptop;

-- 1. Which laptop brands offer both low-priced and high-priced models?
SELECT brand,
       MIN(price) AS Minimum_Price,
       MAX(price) AS Maximum_Price
FROM data
GROUP BY brand
HAVING MIN(price) < 40000 AND MAX(price) > 80000;


-- 2. Which laptop brand has the highest-rated laptop?
SELECT brand, MAX(spec_rating) AS Highest_Rating
FROM data
GROUP BY brand
ORDER BY Highest_Rating DESC
LIMIT 1;


-- 3. How many laptops are available for each processor type?
SELECT processor, COUNT(*) AS Total_Laptops
FROM data
GROUP BY processor
ORDER BY Total_Laptops DESC;


-- 4. Which laptops have both high ratings and low prices?
SELECT name, brand, price, spec_rating
FROM data
WHERE spec_rating >= 80
AND price < 50000;


-- 5. Which laptop brands have an average specification rating above 75?
SELECT brand, ROUND(AVG(spec_rating), 2) AS Average_Rating
FROM data
GROUP BY brand
HAVING AVG(spec_rating) > 75;


-- 6. What is the price range of laptops for each brand?
SELECT brand,
       MIN(price) AS Minimum_Price,
       MAX(price) AS Maximum_Price
FROM data
GROUP BY brand
ORDER BY Maximum_Price DESC;


-- 7. Which processors are used in more than 10 laptops?
SELECT processor, COUNT(*) AS Total_Laptops
FROM data
GROUP BY processor
HAVING COUNT(*) > 10;


-- 8. Which laptops have a specification rating above the overall average?
SELECT name, brand, price, spec_rating
FROM data
WHERE spec_rating > (
    SELECT AVG(spec_rating)
    FROM data
)
ORDER BY spec_rating DESC;


-- 9. Which laptops have a price above the overall average price?
SELECT name, brand, price
FROM data
WHERE price > (
    SELECT AVG(price)
    FROM data
)
ORDER BY price DESC;


-- 10. Which brands have more than 5 laptops priced above ₹1,00,000?
SELECT brand, COUNT(*) AS Expensive_Laptops
FROM data
WHERE price > 100000
GROUP BY brand
HAVING COUNT(*) > 5;
