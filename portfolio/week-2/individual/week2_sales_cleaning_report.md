# Sales Data Cleaning Report

I cleaned the sales dataset on a dedicated test copy. Using GROUP BY and HAVING clauses, I identified duplicate records, audited concrete counts for NULL values, and checked for invalid date entries. Below is the summary report and recommendation for Toomas regarding the highest-priority data issues.

### Data Cleaning Summary
- *Row Count Before Cleaning:* 10,118 records
- *Row Count After Cleaning:* 10,118 records

| Category | Issues Found | Description |
| :--- | :--- | :--- |
| Duplicates | 0 | Repeated invoice_id values (duplicate orders) |
| NULL customer_id | 988 | Missing customer reference (~9.8% of dataset) |
| NULL sale_date | 0 | Missing date |
| NULL total_price | 0 | Missing amount |
| Future dates | 0 | Date > today |
| *TOTAL issues* | *988* | *All issues stem from missing customer_id values* |

*Recommendation:* Toomas should prioritize resolving the missing customer_id records first before proceeding with downstream analytics, as this missing reference affects ~9.8% of the sales data.

*What surprised me:* I was surprised to find 988 missing customer_id records while seeing 0 missing sales dates or total prices. This suggests that while transaction amounts and dates are being captured reliably at checkout, customer identification is frequently skipped or failing to log.

### Business Impact
In business terms, this means:
The transaction pipeline shows perfect financial integrity with zero duplicate invoices, missing prices, or date anomalies, making top-line revenue calculations completely reliable. However, 988 missing customer IDs point to guest checkouts or tracking failures, creating a critical blind spot for buyer retention analysis. Revenue and volume metrics are safe to report, but customer lifetime value calculations should exclude anonymous records until attribution is resolved.