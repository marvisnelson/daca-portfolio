## Executive Summary & Portfolio Deliverables
This week focused on building the consolidated *Investor Dashboard* for UrbanStyle.ltd. The objective was to synthesize key revenue, marketing channel, and store sales metrics into a single, non-scrolling executive view designed for an upcoming investor pitch.

### Included Deliverables
* *query.sql*: SQL query script aggregating core metrics (total_revenue, customers, and average_order).
* *investor_dashboard.pbix*: Power BI report file containing the full single-page wireframe layout.
* *investor_dashboard.png*: High-resolution screenshot of the combined investor dashboard.

---

## Setup, Data Extraction & Dashboard Construction

1. *Environment Setup & Structure*:
   * Organized the local repository tree to ensure week-5 sits within the root portfolio directory alongside previous weeks (week-0 through week-4).
   * Used PowerShell commands to generate deliverable file shells (README.md, query.sql, investor_dashboard.pbix, investor_dashboard.png).

2. *SQL Query Execution*:
   * Extracted essential base metrics using SQL to feed into executive KPI cards, storing the code inside query.sql.

3. *Power BI Dashboard Creation*:
   * *KPI Row (Top Banner)*: Placed single-card metrics showing Total Revenue, Active Customer Count, and Average Order Value (AOV) for immediate context.
   * *Revenue Trend*: Built a line chart tracking multi-month revenue growth to evaluate overall trajectory.
   * *Marketing Breakdown*: Integrated a horizontal bar chart displaying customer acquisition and revenue by sales channel to evaluate marketing performance.
   * *Location Distribution*: Built a store location pie chart to represent regional market share and operational performance.
   * *Executive Text Box*: Added a concise investor summary block highlighting key financial takeaways.

---

## Tool & Chart Selection Justification (Design Decisions)

* *KPI Cards (Top Banner)*:
  * *Why Chosen*: Investors need top-line figures immediately without calculating them manually. KPI cards serve as the executive summary of the entire dashboard, giving an instant snapshot of total financial health, audience size, and order quality.

* *Line Chart (Revenue Trend)*:
  * *Why Chosen*: Best suited for showing continuous change over time. It allows stakeholders to track multi-month revenue growth trajectories and spot seasonal patterns instantly.

* *Bar Chart (Channel Effectiveness)*:
  * *Why Chosen*: Ideal for discrete categorical comparisons. The horizontal bar chart cleanly compares performance across acquisition channels so investors can evaluate marketing success and efficiency.

* *Pie Chart (Store Sales Share)*:
  * *Why Chosen*: Best suited for part-to-whole relationships. It visually demonstrates each location’s proportional share of overall sales, quickly showing which physical regions dominate operational revenue.

* *No-Scroll Single Screen Canvas*:
  * *Why Chosen*: Formatted strictly to fit on one view so an investor can evaluate the full business situation within 30 seconds without navigating multiple tabs or scrolling.

---

## Team Synthesis & Recommendations to Kristi (CEO)

### 1. Biggest Surprise
Looking at all stakeholder data side-by-side, the biggest surprise was the variance in channel effectiveness—certain marketing channels produced high customer traffic but disproportionately lower Average Order Values compared to direct store sales.

### 2. Concrete Recommendation to Kristi
* *Invest*: Scale high-converting marketing channels that yield the highest AOV and expand capacity in top-performing physical/regional locations.
* *Drop/Optimize*: Cut ad spend on underperforming acquisition channels that bring in one-time, low-value orders without driving retention.

### 3. Data Lacked & Unanswered Questions
* *Missing Data*: Lack of customer acquisition cost (CAC) data per channel and long-term retention/churn rates.
* *Investor Questions*: Investors will ask for lifetime value (LTV), unit economics, and operational profit margins (EBITDA), which were not available in the current dataset.

---

## AI Use
* *Power BI & DAX Assistance*: Used AI to construct efficient DAX measures (e.g., aggregating total revenue and distinct customer counts) and to optimize formatting for a clean, non-scrolling executive layout.
* *Workflow & Portfolio Integration*: Assisted in troubleshooting PowerShell terminal directory setups.
