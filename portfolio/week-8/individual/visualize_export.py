from datetime import datetime
import os
import pandas as pd
import plotly.express as px
import plotly.graph_objects as go


def create_weekly_chart(df_weekly):
  """Creates a Plotly line chart of weekly revenue trends."""
  fig = px.line(
      df_weekly,
      x="week",
      y="revenue",
      title="Weekly Revenue Trend",
      markers=True,
  )
  fig.update_layout(xaxis_title="Week", yaxis_title="Revenue ($)")
  return fig


def create_kpi_summary(kpis):
  """Creates a Plotly indicator figure showing key KPIs

  (total revenue, customer count, avg order value).
  Expects a dictionary or a pandas Series/DataFrame of KPIs.
  """
  # Assuming kpis is a dict with keys: 'total_revenue', 'customer_count', 'avg_order_value'
  fig = go.Figure()

  # Add indicators or a layout table
  fig.add_trace(
      go.Indicator(
          mode="number+delta",
          value=kpis.get("total_revenue", 0),
          title={"text": "Total Revenue ($)"},
          domain={"row": 0, "column": 0},
      )
  )

  fig.update_layout(
      grid={"rows": 1, "columns": 1, "pattern": "independent"},
      title="Executive KPI Summary",
  )
  return fig


def export_results(df, df_weekly, kpis, output_dir="output"):
  """Creates the output folder if needed, saves DataFrame to a timestamped CSV,

  and exports Plotly charts to HTML files.
  """
  # 1. Create the output folder if it doesn't exist
  os.makedirs(output_dir, exist_ok=True)

  # 2. Generate timestamp string (e.g., rfm_20260312.csv)
  date_str = datetime.now().strftime("%Y%m%d")

  # 3. Save DataFrame to CSV with timestamp
  csv_filename = os.path.join(output_dir, f"results_{date_str}.csv")
  df.to_csv(csv_filename, index=False)
  print(f"Saved CSV to: {csv_filename}")

  # 4. Create and save charts as HTML
  fig_weekly = create_weekly_chart(df_weekly)
  weekly_html_path = os.path.join(output_dir, f"weekly_revenue_{date_str}.html")
  fig_weekly.write_html(weekly_html_path)
  print(f"Saved weekly chart to: {weekly_html_path}")

  fig_kpi = create_kpi_summary(kpis)
  kpi_html_path = os.path.join(output_dir, f"kpi_summary_{date_str}.html")
  fig_kpi.write_html(kpi_html_path)
  print(f"Saved KPI summary to: {kpi_html_path}")


# Example test block if run directly
if __name__ == "__main__":
  # Sample dummy data for testing
  sample_weekly = pd.DataFrame(
      {"week": ["Week 1", "Week 2", "Week 3"], "revenue": [1200, 1900, 2400]}
  )
  sample_df = pd.DataFrame(
      {
          "customer_id": [1, 2, 3],
          "total_spend": [500, 700, 1200],
      }
  )
  sample_kpis = {
      "total_revenue": 2400,
      "customer_count": 3,
      "avg_order_value": 800,
  }

  export_results(sample_df, sample_weekly, sample_kpis)