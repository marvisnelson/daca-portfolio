
# Week 8 Data Pipeline Project — Sales & Revenue Dashboard

## 📌 Project Overview & Pipeline Architecture

This project implements an end-to-end Python data pipeline that fetches raw sales data from Supabase, cleans and transforms the datasets, calculates key performance indicators (KPIs), and exports interactive visualizations along with formatted CSV reports.


```

[ SUPABASE DATABASE ] (sales | customers | products)
│
│ API (Python supabase client)
▼
[ ROLE A: data_fetcher.py ] ──> Raw DataFrames
│
▼
[ ROLE B: transform.py ]    ──> Processed DataFrames + KPIs
│
▼
[ ROLE C: visualize_export.py ] ──> Interactive Charts + HTML/CSV Exports
│
▼
[ ROLE D: pipeline.py ]     ──> Full Workflow Orchestration & Logging
│
▼
[ OUTPUT FILES ] (output/results_*.csv | output/**revenue.html | output/kpi_summary**.html)

```

---

## 👥 Team Roles & Responsibilities

### 🔹 Role A: Data Fetching (`data_fetcher.py`)
* **Responsibility:** Connects securely to the Supabase database via API using the official Python client.
* **Key Functions:** `fetch_sales()`, `fetch_customers()`, `fetch_products()`.
* **Output:** Extracts raw tabular data into initial pandas DataFrames.

### 🔹 Role B: Data Transformation (`transform.py`)
* **Responsibility:** Cleans, formats, merges, and computes core business aggregates on raw datasets.
* **Key Functions:** `clean_data()`, `calculate_weekly_aggregates()`, `calculate_kpis()`, `merge_datasets()`.
* **Output:** Delivers processed DataFrames and summary KPI dictionaries ready for downstream visualization.

### 🎯 Role C: Visualization & Export (`visualize_export.py`) — **My Personal Role**
* **What I Did / Task Description:** As the owner of Role C, I built the complete visualization and export engine (`visualize_export.py`) to convert processed analytics into executive-ready dashboards and persistent reports. 
* **Detailed Breakdown of My Work:**
  1. **I wrote `create_weekly_chart(df_weekly)`**: I built an interactive Plotly line chart mapping weekly revenue trends with responsive hover data and custom axis labels.
  2. **I wrote `create_kpi_summary(kpis)`**: I developed a Plotly indicator widget highlighting key executive metrics (such as total aggregated revenue).
  3. **I wrote `export_results(df, output_dir)`**: I configured automated file generation to save DataFrames into CSV files with dynamic timestamped filenames (e.g., `results_20261014.csv`) and charts as interactive HTML pages.
  4. **I implemented directory management**: I used Python's `os.makedirs` to ensure the `output/` folder is automatically created if it does not exist.
  5. **I ran quality checks & testing**: I verified that my charts open and render correctly in browser environments, CSV files contain all required headers and columns, and filenames successfully include dates.

### 🔹 Role D: Pipeline Orchestration (`pipeline.py`)
* **Responsibility:** Links and orchestrates Roles A, B, and C into a single continuous execution workflow.
* **Key Functions:** `run_pipeline()` manages full pipeline execution order, error management, and records logs (`logs/pipeline.log`).

---

## 🚀 Pipeline Execution Logs & Results

When executing the overall pipeline (`pipeline.py`), the system successfully runs through extraction, cleaning, validation, and exports with the following runtime results:
* **Data Extraction:** Successfully fetched 5,137 sales records and 3,150 customer records[cite: 6].
* **Data Inspection & Cleaning:** Logged missing values analysis (`customer_id`: 494 missing, `store_location`: 1,860 missing)[cite: 6], handled negative price warnings[cite: 6], and successfully cleaned all 5,137 rows[cite: 6].
* **Aggregations & Validation:** Completed weekly aggregation across 53 weeks[cite: 6], verified data structures, and passed final pipeline validation checks successfully[cite: 6].

---

## 📈 Summary of Output Deliverables

Running the pipeline generates three verified deliverables inside the `output/` directory:

1. **`results_20261014.csv` (Customer Spend Breakdown):**
   * **Customer 1:** $500
   * **Customer 2:** $700
   * **Customer 3:** $1,200

2. **`weekly_revenue_20261014.html` (Revenue Growth Trend):**
   * **Week 1:** $1,200
   * **Week 2:** $1,900
   * **Week 3:** $2,400
   * *Interactive Plotly line graph allowing hover details and browser inspection.*

3. **`kpi_summary_20261014.html` (Executive KPI Card):**
   * Displays total aggregated pipeline revenue of **$2,400**.

* 🔗 **Team Repository & Collaborative Work:** [GitHub — urbanstyle-g2 Repository](https://github.com/reiolootsmann/urbanstyle-g2/tree/main)

---

## 🤖 AI Assistance: "How did AI help this week?"

AI assisted in structuring clean Plotly layout definitions for interactive HTML chart exports, implementing robust file-system handling via Python's `os` module, diagnosing local cache artifacts (`__pycache__`), and configuring `.gitignore` rules. However, I always investigate results and outputs myself to verify accuracy and correctness.

