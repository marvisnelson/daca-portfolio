-- Create a copy of the sales table for testing purposes
CREATE TABLE sales_test AS SELECT * FROM sales;
ALTER TABLE sales_test ADD COLUMN IF NOT EXISTS id SERIAL;
-- Check the row count
SELECT COUNT(*) AS row_count FROM sales_test;
--Find duplicates — which orders (invoices) repeat?
SELECT invoice_id, COUNT(*) AS copy_count
FROM sales_test
GROUP BY invoice_id
HAVING COUNT(*) > 1
ORDER BY copy_count DESC;

-- Count the number of duplicate rows:
SELECT COUNT(*) AS duplicate_rows
FROM sales_test
WHERE id NOT IN (
    SELECT MIN(id)
    FROM sales_test
    GROUP BY invoice_id
);

-- Find NULL values in critical fields:
SELECT
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS null_customer_id,
    COUNT(*) FILTER (WHERE sale_date IS NULL) AS null_sale_date,
    COUNT(*) FILTER (WHERE total_price IS NULL) AS null_total_price
FROM sales_test;

--Check the dates, UrbanStyle.ltd was founded in 2020 
SELECT COUNT(*) AS impossible_dates
FROM sales_test
WHERE sale_date > CURRENT_DATE
   OR sale_date < DATE '2020-01-01'; 

-- Delete duplicates (keep only the first row per invoice_id)
DELETE FROM sales_test
WHERE id NOT IN (
    SELECT MIN(id)
    FROM sales_test
    GROUP BY invoice_id
);
-- Check: the row count should now equal the number of unique invoice_id values (~10,118)
SELECT COUNT(*) AS after_cleaning FROM sales_test;

-- Document NULL customer_id (these are guest purchases — valid business logic!)
-- NB: here NULL means "unknown customer / guest purchase", NOT a data error.
-- See how many there are:
SELECT COUNT(*) AS guest_purchases FROM sales_test WHERE customer_id IS NULL;

-- In analysis, use COALESCE to give them a temporary label:
SELECT COALESCE(customer_id, -1) AS clean_customer_id FROM sales_test;


-- Fix future dates
UPDATE sales_test
SET sale_date = CURRENT_DATE
WHERE sale_date > CURRENT_DATE;

-- Check the result
SELECT COUNT(*) AS rows_after FROM sales_test;

