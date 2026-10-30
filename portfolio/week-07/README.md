## Week 7: Python Pandas — RFM customer segmentation

### My role
**Role B: Data Cleaning & Preparation**
- Processed raw transaction dataset by dropping duplicate records and filtering out missing customer IDs, zero/negative quantities, and unit prices.
- Converted `sale_date` to `datetime64[us]` objects and calculated individual transaction totals (`total_price`).
- Reduced dataset from 10,118 raw records down to 8,950 clean transaction rows across 2,540 unique customers spanning 2023-01-01 to 2026-06-28.

### Key findings
- **Data Quality (Role B Output):** Successfully removed 1,168 invalid/duplicate rows, establishing a clean baseline dataset of 8,950 valid sales records across 2,540 unique customers with total revenue of €2,676,850.54.
- **Baseline RFM Model:** Identified 455 VIP Champions driving 42.82% of total business revenue, while flagging 529 At-Risk customers in need of re-engagement.
- **Advanced 6-Tier Weighted Model (30% Tier):** Applying 2x weighting to Monetary value ($R + F + 2 \times M$) revealed that 516 VIP Champions generate €1,280,902.39 (47.85% of total revenue) with an average spend of €2,482.37 per customer.
- **Churn Mitigation Target:** Isolated 356 At-Risk customers (average recency of 226.5 days) and 337 Lost customers, mapping each tier directly to automated marketing workflows in `rfm_segments.csv`.

### AI use
I used ChatGPT/Gemini to help debug Jupyter Notebook environment errors with `nbformat` and Plotly rendering in VS Code. AI also helped me write the Python script to apply linear scaling for the weighted 2x Monetary scoring formula ($R + F + 2 \times M$) and export `rfm_segments.csv`.
