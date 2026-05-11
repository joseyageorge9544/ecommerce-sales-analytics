# ecommerce-sales-analytics
Built an end-to-end E-commerce analytics project using Excel, SQL, Python, and Power BI to analyze sales performance, customer behavior, order trends, and marketing effectiveness.
# 🛒 E-Commerce Sales Analytics Dashboard

## 📋 Project Overview
End-to-end analysis of 1,200 e-commerce orders spanning 2023-2025.
Built to demonstrate real-world data analytics workflow.

## 🛠️ Tech Stack
| Tool | Purpose |
|------|---------|
| Excel | Data cleaning, KPI summary |
| MySQL | Database creation, 15 SQL queries |
| Python | EDA, visualisations |
| Power BI |  interactive dashboards |

## 📊 Key Findings
- Total Revenue: $1,172,153 across 1,200 orders
- 🚨 Cancellation Rate: 20.8% (4x above industry benchmark)
- 📈 Instagram is #1 channel by revenue ($254,501)
- 💡 Chair has highest AOV ($1,027) — premium product insight
- 📉 Revenue declined 13.2% YoY — investigated root causes

## 📁 Structure
- /data — Raw and cleaned datasets
- /sql  — Database schema + 15 business queries
- /python — EDA script + chart exports
- /powerbi — Interactive dashboard file

## 🚀 How to Run
1. Clone repo: git clone [your-repo-url]
2. SQL: Run sql/01_create_schema.sql in MySQL Workbench
3. Python: pip install -r requirements.txt && python eda_analysis.py
4. Power BI: Open powerbi/ECommerce_Dashboard.pbix
