-- Product category summary. Build an overview by category:
SELECT
  p.category,
  COUNT(DISTINCT p.product_id) AS product_count,
  ROUND(AVG(p.retail_price), 2) AS average_price,
  MIN(p.retail_price) AS min_price,
  MAX(p.retail_price) AS max_price
FROM products p
GROUP BY p.category
ORDER BY product_count DESC;

--sold vs stocked
SELECT 
    p.category,
    SUM(s.quantity) AS total_units_sold,
    ROUND(AVG(s.quantity), 2) AS avg_units_sold_per_product
FROM products p
JOIN sales s ON p.product_id = s.product_id
GROUP BY p.category
HAVING SUM(s.quantity) > 50 
ORDER BY total_units_sold DESC;

-- Product ranking within category — use a window function:
SELECT
  p.product_name,
  p.category,
  p.retail_price,
  ROW_NUMBER() OVER (
    PARTITION BY p.category
    ORDER BY p.retail_price DESC
  ) AS rank_in_category
FROM products p;
