# Data-Quality Summary Report
*WEEK 2 · CHARACTER: TOOMAS KASK*  
*Team:* Daria · Maria · Marvis · Reio  

---

## KEY FINDINGS

### SALES
* 988 records (9.8%) missing customer_id
* Duplicates, dates, and totals otherwise fully clean.

### CUSTOMERS
* 3 issues found across the customer table
* 128 duplicate emails, 380 missing emails, 54 city spellings for 12 real cities.

### PRODUCTS
* 12 duplicate product names (24 rows)
* Pricing, NULLs, and category otherwise fully clean.

### CROSS-VALIDATION
* 0 orphan customer or product references
* 592 dormant customers, 12 unsold products — flagged for review.

---

## BIGGEST SURPRISE
Despite real issues in specific areas, every relationship between the tables held up perfectly — zero broken customer or product references anywhere in sales. Data problems were narrow and specific, not structural.

---

## RECOMMENDATION FOR TOOMAS
Trustable once city and email formatting are standardised. customer_id gaps should be investigated first (9.8% of sales). Duplicate emails/names and dormant customers/products need manual review before any merge or deletion.

---

## MISSING DATA
True email for 380 customers is unknown. We can't confirm whether shared emails or product names are genuine duplicates, or why 592 customers and 12 products show no activity — business context is needed.

---

## Preparing the Demo
An outcome presentation, not a description of the process — one sentence each.

* *CONCLUSION:* Our core data links together correctly — zero broken references between sales, customers, and products — but several fields still need cleanup before the numbers can be fully trusted.
* *DECISION:* Toomas should hold off on high-stakes reporting decisions until the missing customer_id records are investigated and the duplicate emails and product names are manually reviewed.
* *WHAT SURPRISED US:* Despite real quality issues in specific columns, every relationship between the three tables was completely intact — not a single orphaned reference anywhere in the data.
