# Inventory Statistics Analysis — UrbanStyle

## Project Overview
This project analyzes product categories, stock distributions, and sales metrics for UrbanStyle using SQL aggregation, filtering, and window functions to optimize inventory allocation.

---

## Key Data Summary

| Category (category) | Total Products (product_count) | Avg Retail Price (average_price) | Total Units Sold (total_units_sold) | Avg Sold / Item (avg_units_sold_per_product) |
| :--- | :--- | :--- | :--- | :--- |
| *meeste_riided* | 82 | €189.91 | 4,121 | 1.82 |
| *jalanõusid* | 73 | €214.10 | 3,737 | 1.84 |
| *laste_riided* | 70 | €85.30 | 3,686 | 1.82 |
| *naiste_riided* | 70 | €192.58 | 3,604 | 1.78 |
| *aksessuaarid* | 67 | €125.71 | 3,231 | 1.82 |

---

## Task Findings & Business Answers

*1. Most Profitable Categories*  
Footwear (jalanõusid) yields the highest profit per unit with an average retail price of €214.10 across 3,737 sales. Men's Clothing (meeste_riided) leads in total sales volume, generating 4,121 units sold at an average price of €189.91. Women's Clothing follows with steady returns (€192.58 average price across 3,604 units).

*2. Products Needing Attention*  
Accessories (aksessuaarid) underperforms with the smallest catalog size (67 items) and lowest volume (3,231 units). High-priced items like top-ranked leather mittens (Luksuslik metallist labakindad, €231.13) move slowly, tying up inventory capital.

*3. Recommendation for Anna*  
Shift inventory budget from low-turnover accessories into high-demand Footwear and Men's Clothing stock. Implement targeted promotional discounts on slow-moving accessories (€13.53–€25.00) to free up working capital.

*4. Category Ranking & Revenue Insights*  
* *Footwear (jalanõusid):* Peak items hit €434.08, driving maximum category margin despite high average costs.
* *Men's Clothing (meeste_riided):* Top item prices reach €374.54, anchoring company volume sales.
* *Women's Clothing (naiste_riided):* Top products reach €351.33 with steady high-margin pricing.
* *Accessories (aksessuaarid):* Top 3 items command premium prices (€219.83–€231.13), but overall revenue drops fast due to low volume.
* *Children's Clothing (laste_riided):* Top prices cap at €168.82; category performance relies on volume (3,686 units) over high individual margins.
