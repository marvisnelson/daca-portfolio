-- LEFT JOIN: all customers, including those with no purchases
SELECT
    c.first_name,
    c.last_name,
    c.email,
    c.city,
    c.registration_date,
    s.sale_id
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL;
-- If sale_id is NULL, the customer has never bought anything!
SELECT COUNT(*) AS lost_customers
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL;
SELECT
    c.city,
    COUNT(*) AS lost_customers
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
GROUP BY c.city
ORDER BY lost_customers DESC;

-- When did lost customers register?
SELECT
    c.first_name || ' ' || c.last_name AS customer,
    c.registration_date,
    c.city,
    c.loyalty_tier
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
ORDER BY c.registration_date DESC;

SELECT
    CASE
        WHEN s.sale_id IS NULL THEN 'Lost (no purchases)'
        ELSE 'Active (has purchased)'
    END AS status,
    COUNT(DISTINCT c.customer_id) AS customers
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
GROUP BY
    CASE
        WHEN s.sale_id IS NULL THEN 'Lost (no purchases)'
        ELSE 'Active (has purchased)'
    END;


	--Add a time-based analysis: group lost customers by registration month and look for patterns:
SELECT
    DATE_TRUNC('month', c.registration_date) AS registration_month,
    COUNT(*) AS lost_customers
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
GROUP BY DATE_TRUNC('month', c.registration_date)
ORDER BY registration_month;
