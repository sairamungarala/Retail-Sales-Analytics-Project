# Retail Sales Analytics Project

A beginner-friendly retail sales analysis project using the Sample Superstore dataset, Python, SQL, Excel, and Power BI.

## Repository structure

```text
Retail_Sales_Analytics/
├── data/
│   ├── raw/
│   │   └── Sample-Superstore.csv
│   └── processed/
│       ├── Cleaned_Superstore_Data.csv
│       └── Cleaned_Superstore_Data.xlsx
├── python/
│   └── retail_sales_analysis.py
├── sql/
│   └── retail_sales_queries.sql
├── powerbi/
│   └── Retail_Sales_Dashboard.pbix
├── reports/
│   └── Project_Report.pdf
└── README.md
```

## Project workflow

1. **Raw data** — start with the original Superstore CSV in `data/raw/`.
2. **Data cleaning** — review and clean the data, then save processed CSV/XLSX files in `data/processed/`.
3. **Python analysis** — use pandas for inspection, cleaning, grouping, and exploratory analysis.
4. **SQL analysis** — run queries for filtering, sales/profit summaries, loss-making orders, and state-level performance. Adjust table names and syntax for your SQL database.
5. **Power BI dashboard** — open the `.pbix` file in Power BI Desktop to explore the report.
6. **Project report** — read the PDF in `reports/` for the report included with this project.

## Tools

- Python: pandas, NumPy, Matplotlib, Seaborn
- SQL
- Microsoft Excel
- Microsoft Power BI

## Running the Python script

From the repository root, install the libraries if needed:

```bash
pip install pandas numpy matplotlib seaborn
```

Then run:

```bash
python python/retail_sales_analysis.py
```

The script expects the original CSV at `data/raw/Sample-Superstore.csv`.

## Important notes

- The included Python file contains exploratory-analysis examples; several lines are commented out. Uncomment and adapt the analyses you want to run.
- SQL syntax differs between SQLite, MySQL, PostgreSQL, and SQL Server. The query file may need small changes for your database.
- Before publishing, confirm that the dashboard and report are final, and do not upload private credentials or personal information.
