=============================================================================
-- UrbanStyle.ltd — Week 5 Task Card Query (Role D: Investor Dashboard Base)
-- =============================================================================

SELECT 
    ROUND(SUM(total_price), 2) AS total_revenue,
    COUNT(DISTINCT customer_id) AS customers,
    ROUND(AVG(total_price), 2) AS average_order
FROM sales;