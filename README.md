# E-Commerce Data Analytics

## Project Overview

This project focuses on analyzing e-commerce transaction data using SQL Server, Python, and Power BI.

I started with the Online Retail II dataset, which contained raw transaction records. I used SQL Server Express 2025 and SSMS for data cleaning, and Python scripts for additional cleaning, handling missing values, and data validation.

After preparing the cleaned dataset, I created interactive Power BI dashboards to analyze sales performance, customer behaviour, customer segmentation, and churn.

## Tools & Technologies

- SQL Server Express 2025
- SQL Server Management Studio (SSMS)
- Python
- Pandas
- NumPy
- Power BI
- Microsoft Excel

## Data Preparation

- Imported the raw Online Retail II CSV files.
- Performed data cleaning using SQL Server.
- Used Python for additional data cleaning and missing-value handling.
- Performed data validation to check data quality.
- Prepared the final cleaned dataset for Power BI.

## Power BI Dashboards

### 1. Business Overview

This dashboard provides an overview of e-commerce business performance.

It includes:
- Total Customers
- Total Revenue
- Churn Percentage
- Average Customer Value
- Customer distribution by segment
- Monthly, quarterly, and yearly trends
- Revenue analysis by customer segment

### 2. RFM Analysis

This dashboard focuses on customer purchasing behaviour using RFM analysis.

RFM stands for:
- **Recency:** How recently a customer purchased.
- **Frequency:** How often a customer purchases.
- **Monetary:** How much a customer spends.

The dashboard includes:
- Customer segmentation
- RFM score analysis
- Average customer value by segment
- Country-wise customer analysis
- Monthly, quarterly, and yearly churn analysis

Customer segments include Champions, Loyal, At Risk, Lost, New, and Needs Attention.

## Dashboard Features

- Interactive slicers for filtering data.
- Power BI bookmarks to switch between different views.
- Back navigation buttons.
- Clear all slicers button.
- Interactive charts and tables.

**Note:** In Power BI Desktop editing mode, hold `Ctrl` while clicking a bookmark button to activate it.

## Key Learnings

- Data cleaning and validation using SQL and Python.
- Working with real-world e-commerce transaction data.
- Customer segmentation using RFM analysis.
- Understanding revenue and churn metrics.
- Building interactive dashboards using Power BI.

## Project Files

- `Dataset/` – Raw and cleaned datasets.
- `SQL/` – SQL data cleaning scripts.
- `Python/` – Python cleaning and validation scripts.
- `PowerBI/` – Power BI dashboard file.
- `images/` – Dashboard screenshots.

## Author

**E-Commerce Data Analytics Project**

Tools: SQL Server | Python | Power BI

## Dataset

The project uses the Online Retail II dataset.

The cleaned and processed dataset was generated using SQL Server and Python. It is not included in this repository because of its large file size.

To reproduce the analysis, download the original dataset and run the SQL and Python scripts provided in this repository.
