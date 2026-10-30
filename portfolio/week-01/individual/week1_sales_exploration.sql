-- SELECT — choose columns to display.
SELECT customer_id, product_id, total_price FROM sales;


-- WHERE — filter rows by a condition.
SELECT * FROM sales WHERE total_price > 50;
SELECT * FROM sales WHERE store_location = 'Tallinn' AND total_price >= 20;
SELECT * FROM sales WHERE store_location IN ('Tallinn', 'Tartu');
SELECT * FROM sales WHERE total_price BETWEEN 10 AND 100;


-- ORDER BY — sort results (ASC ascending, DESC descending).
SELECT * FROM sales ORDER BY total_price DESC;
SELECT * FROM sales ORDER BY sale_date ASC, total_price DESC;


-- LIMIT — restrict returned rows.
SELECT * FROM sales ORDER BY total_price DESC LIMIT 10;


-- DISTINCT — remove repeated values from a result.
SELECT DISTINCT store_location FROM sales;


-- COUNT — count rows.
SELECT COUNT(*) FROM sales;                          -- all rows
SELECT COUNT(customer_id) FROM sales;               -- non-NULL values
SELECT COUNT(DISTINCT customer_id) FROM sales;      -- unique customers


-- NULL — a missing value, not zero or empty text.
SELECT * FROM sales WHERE customer_id IS NULL;
SELECT * FROM sales WHERE customer_id IS NOT NULL;