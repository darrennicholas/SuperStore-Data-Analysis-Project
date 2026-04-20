# SuperStore Data Analysis Project
SuperStore analysis using Google Sheets (dashboard with KPIs, bar/area/pie charts) &amp; PostgreSQL (SQL queries).

# 📊 SuperStore Data Analysis Project

## Overview
This project analyzes retail superstore data (10,000+ orders) using **Google Sheets** for interactive dashboarding and **PostgreSQL** for SQL‑based insights.  
It answers key business questions: which products, categories, and regions drive revenue and profit? How do discounts affect profitability? What are seasonal sales trends?

## Tools Used
- **Google Sheets** – data cleaning, pivot tables, charts, dashboard, slicers
- **PostgreSQL** – complex aggregations, discount impact, top‑product queries

## Data Source
- `samplesuperstore.csv` (included in `/data`)
- Columns: `Sales`, `Profit`, `Quantity`, `Discount`, `Category`, `Sub‑Category`, `Region`, `Segment`, `Order Date`, `Ship Mode`, etc.

## Dashboard Features (Google Sheets)
- **KPI cards** – Total Sales ($2.33M), Total Profit, Number of Orders (9,994), Profit Ratio (12.5%)
- **Clustered bar chart** – Sales vs. Profit by Category
- **Bar chart** – Profit by Sub‑Category (top/bottom performers)
- **Area chart** – Monthly Sales trend
- **Pie charts** – Sales by Region, Sales by Segment
- **Slicers** – filter by year, region, category

## SQL Analysis (PostgreSQL)
Key queries (available in `/sql_queries`):
- Monthly sales and profit ratio
- Top 10 products by profit
- Discount impact – profit ratio per discount bucket
- Regional performance (sales, profit, quantity)
- Segment‑wise quantity vs. sales correlation

## Key Insights
- **Technology** has highest sales; **Office Supplies** generates higher profit.
- Discounts above 40% often lead to negative profit.
- Sales peak in November–December (holiday season).
- **Corporate** segment has the highest average order value.

## How to Reproduce
### Google Sheets Dashboard
1. Open `samplesuperstore.csv` in Google Sheets.
2. Create pivot tables (rows = Category, values = SUM Sales / SUM Profit).
3. Insert charts → clustered bar chart.
4. Add slicers from **Data → Add a slicer**.
5. Arrange visuals on a dashboard sheet.

### PostgreSQL Analysis
1. Import CSV into a PostgreSQL table.
2. Run SQL scripts from `/sql_queries` (e.g., `monthly_sales_profit.sql`).
3. Export results or connect to a BI tool.

## Repository Structure
