## Week 7: Python Pandas — RFM customer segmentation

### My role
Role B: Data Cleaning
- Cleaned and prepared the combined sales dataset to ensure accurate metrics for RFM segmentation.
- Removed duplicate records by checking unique `invoice_id` values.
- Handled missing data, converted sales dates into proper datetime formats, and filtered out non-positive price records to maintain data integrity.

### Key findings
- Identified missing values across the dataset prior to cleaning: `customer_id` (77), `store_location` (312), `email` (752), and `first_name` (725).
- Reduced rows down to **923** after dropping null values, ultimately reaching a final cleaned dataset of **907 rows and 14 columns** across **661 unique customers**.
- Verified transaction dates spanning from **2023-01-01** to **2026-03-17**, ensuring complete and standardized data ready for RFM scoring without altering live Supabase tables.

### AI use
I used Gemini as a thought partner to understand deduplication behavior on pre-cleaned Supabase data and troubleshoot Jupyter Notebook execution steps. AI also helped me organize my data cleaning strategy and structure my code efficiently.