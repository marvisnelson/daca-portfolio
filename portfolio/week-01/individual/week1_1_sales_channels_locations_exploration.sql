-- Which channels, locations and payment methods are there?
SELECT channel, store_location, payment_method
FROM sales
LIMIT 10;

-- Unique sales channels
SELECT DISTINCT channel FROM sales;

-- Unique store locations
SELECT DISTINCT store_location FROM sales;

-- Unique payment methods
SELECT DISTINCT payment_method FROM sales;

-- Online sales
SELECT * FROM sales
WHERE channel = 'online'
ORDER BY total_price DESC
LIMIT 15;

-- Transactions with no store location
SELECT COUNT(*) AS missing_store_location
FROM sales
WHERE store_location IS NULL;



