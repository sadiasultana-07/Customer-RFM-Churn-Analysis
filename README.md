# Customer-RFM-Churn-Analysis
# 🛒 E-Commerce Data Analytics | SQL Server, Python & Power BI

## 📌 Project Overview

This project focuses on analyzing e-commerce transaction data to understand business performance, customer purchasing behaviour, revenue trends, customer segmentation, and customer churn.

I started with raw **Online Retail II** datasets and performed data cleaning, missing-value handling, and data validation using **SQL Server Express 2025, SQL Server Management Studio (SSMS), and Python**.

After completing the data preparation process, I created a cleaned dataset and used Power BI to develop interactive dashboards for business performance monitoring and RFM-based customer analysis.

The main objective of this project is to transform raw e-commerce data into meaningful business insights that can help businesses understand their customers, monitor revenue, identify customer segments, and make better business decisions.

---

## 🎯 Project Objectives

- Clean and prepare raw e-commerce transaction data.
- Identify and handle missing values and data-quality issues.
- Validate the cleaned data using SQL and Python.
- Calculate revenue and customer-related metrics.
- Analyze customer purchasing behaviour.
- Perform RFM (Recency, Frequency, Monetary) analysis.
- Segment customers based on their purchasing behaviour.
- Analyze customer churn patterns.
- Build interactive Power BI dashboards.
- Present business insights through clear visualizations.

---

## 📂 Dataset Description

**Dataset:** Online Retail II

The project uses two raw CSV files containing historical e-commerce transaction records.

The original datasets contain information about product purchases, invoices, quantities, prices, customers, and countries.

### Raw dataset columns

| Column | Description |
|---|---|
| Invoice | Unique invoice number |
| StockCode | Product identification code |
| Description | Product description |
| Quantity | Number of products purchased |
| InvoiceDate | Date and time of the transaction |
| Price | Unit price of the product |
| Customer ID | Customer identification number |
| Country | Customer's country |

### Cleaned dataset

After the data preparation process, the final dataset contains the original transaction information along with additional analytical columns.

| Column | Description |
|---|---|
| Invoice | Invoice number |
| StockCode | Product identification code |
| Description | Product description |
| Quantity | Purchased quantity |
| InvoiceDate | Transaction date |
| Price | Product unit price |
| Customer_ID | Customer identification number |
| Country | Customer's country |
| SourceSheet | Source dataset identification |
| InvoiceMonth | Month of the invoice |
| Revenue | Revenue generated from the transaction |
| Recency | Time since the customer's most recent purchase |
| Frequency | Number of purchases made by the customer |
| Monetary | Total monetary value of customer purchases |
| R_Score | Recency score |
| F_Score | Frequency score |
| M_Score | Monetary score |
| Segment | Assigned customer segment |
| IsChurned | Customer churn indicator |

---

## 🛠️ Tools & Technologies Used

| Tool | Purpose |
|---|---|
| SQL Server Express 2025 | Database management and data cleaning |
| SQL Server Management Studio (SSMS) | Writing and executing SQL queries |
| Python | Data cleaning, missing-value handling and validation |
| Pandas | Data manipulation and analysis |
| NumPy | Numerical operations and data handling |
| Power BI | Interactive dashboard development |
| Microsoft Excel | Reviewing and storing the cleaned dataset |
| Git & GitHub | Project documentation and version control |

---

## 🔄 Project Workflow

The project follows an end-to-end data analytics workflow.

### Step 1: Raw Data Collection

- Started with the Online Retail II datasets.
- Imported the two CSV files containing raw transaction records.
- Examined the available columns and overall data structure.
- Identified data-quality issues that needed to be addressed before analysis.

### Step 2: Data Cleaning Using SQL Server

Used SQL Server Express 2025 and SQL Server Management Studio to work with the raw transaction data.

The cleaning process involved:

- Examining the dataset structure.
- Identifying missing and incomplete values.
- Working with inconsistent data.
- Preparing transaction records for analysis.
- Creating a structured dataset for further processing.

### Step 3: Data Cleaning and Validation Using Python

Used Python scripts to perform additional data preparation and validation.

Libraries used:

- **Pandas:** For reading, processing, and manipulating transaction data.
- **NumPy:** For numerical operations and handling missing values.

The Python processing included:

- Handling missing values.
- Performing data cleaning operations.
- Checking data consistency.
- Validating the prepared dataset.
- Preparing the data for Power BI reporting.

### Step 4: Final Dataset Preparation

After completing the SQL and Python processing, I prepared the cleaned dataset in Excel format.

The final dataset includes additional analytical fields such as:

- Revenue
- Invoice Month
- Recency
- Frequency
- Monetary
- RFM Scores
- Customer Segments
- Churn Indicator

This dataset was used as the primary source for developing the Power BI dashboards.

### Step 5: Power BI Dashboard Development

Created two interactive dashboard pages:

1. Business Overview
2. RFM Analysis

The dashboards include KPI cards, charts, slicers, bookmarks, navigation buttons, and interactive visual elements.

---

# 📊 Dashboard 1: Business Overview

![Business Overview](images/business-overview.png)

The Business Overview dashboard provides a high-level view of e-commerce performance.

It helps understand overall customer activity, revenue generation, customer segmentation, and business trends.

### Key Performance Indicators (KPIs)

The dashboard includes four important KPIs:

| KPI | Purpose |
|---|---|
| Total Customers | Displays the total number of customers |
| Total Revenue | Shows the overall revenue generated |
| Churned % | Displays the percentage of churned customers |
| Average Customer Value | Provides an overview of average customer value |

### Visualizations

**1. Total Customers by Segment**

- Displays the distribution of customers across different segments.
- Helps identify the size of each customer group.
- Makes it easier to compare customer segments.

**2. Customer Distribution by Segment and Churn Status**

- Compares churn status across different customer segments.
- Helps identify segments with a higher proportion of churned customers.
- Supports customer retention analysis.

**3. Monthly Customer Trends**

- Shows how customer activity changes over different months.
- Helps identify monthly variations and trends.

**4. Quarterly Customer Trends**

- Displays customer trends across four quarters.
- Helps compare business performance between quarters.

**5. Yearly Customer Trends**

- Shows customer trends across different years.
- Helps understand long-term changes in customer activity.

### Revenue Analysis

The dashboard also includes a Revenue view that can be selected using the interactive bookmark buttons.

Revenue visualizations include:

- Revenue by Customer Segment.
- Revenue distribution by Segment and Churn Status.
- Monthly Revenue Trends.
- Quarterly Revenue Trends.
- Yearly Revenue Trends.

This allows users to switch between customer-related and revenue-related analysis within the same dashboard page.

---

# 📈 Dashboard 2: RFM Analysis

![RFM Analysis](images/rfm-analysis.png)

The RFM Analysis dashboard focuses on customer purchasing behaviour and customer segmentation.

RFM stands for:

### 1. Recency (R)

Measures how recently a customer made a purchase.

- Customers who purchased recently generally receive better recency scores.
- Helps identify customers who are still actively purchasing.
- Helps identify customers who may need re-engagement.

### 2. Frequency (F)

Measures how frequently a customer makes purchases.

- Helps identify regular customers.
- Helps understand repeat purchasing behaviour.
- Helps identify customers with higher purchase frequency.

### 3. Monetary (M)

Measures how much money a customer spends.

- Helps identify high-value customers.
- Helps compare customer spending patterns.
- Helps understand which customer groups contribute more revenue.

### RFM Scoring

The dataset includes three scoring columns:

- R_Score
- F_Score
- M_Score

These scores are used to analyze customer purchasing behaviour and assign customers to different segments.

The dashboard displays the average RFM scores for each customer segment and country.

### Customer Segments

The analysis groups customers into six segments:

| Segment | Description |
|---|---|
| Champions | Customers with strong purchasing activity and high customer value |
| Loyal | Customers who regularly purchase |
| At Risk | Customers who may require retention efforts |
| Lost | Customers who have not purchased recently |
| New | Recently acquired customers |
| Needs Attention | Customers who may need additional engagement |

These segments help businesses understand different customer groups and identify opportunities for customer retention and engagement.

### RFM Dashboard Visualizations

**1. Customer Segment Summary Table**

Displays:

- Total Customers
- Total Revenue
- Average R_Score
- Average F_Score
- Average M_Score

This provides a comparison of customer segments using multiple performance indicators.

**2. Average Customer Value by Segment**

Compares average customer value across the six customer segments.

**3. Country-Level Customer Analysis**

Provides a country-wise breakdown of:

- Total Customers
- Total Revenue
- Average R_Score
- Average F_Score
- Average M_Score

**4. Average Customer Value by Country**

Compares customer value across different countries.

**5. Monthly Churn Analysis**

Shows how the churn percentage changes over different months.

**6. Quarterly Churn Analysis**

Helps compare churn percentages across quarters.

**7. Yearly Churn Analysis**

Provides a yearly view of customer churn trends.

---

## 🎛️ Interactive Dashboard Features

Both dashboard pages include interactive features to make data exploration easier.

### 1. Slicers

The dashboards include the following slicers:

- Month
- Quarter
- Year
- Country
- Segment
- IsChurned

Users can select different filter values to explore specific parts of the data.

### 2. Bookmark Navigation

Used Power BI bookmarks to create interactive views within the dashboards.

Business Overview:
Revenue
Customer

RFM Analysis:
Segment
Country

These bookmark buttons allow users to switch between different analytical views on the same dashboard page.
Important: In Power BI Desktop, users must hold down the Ctrl key while clicking a bookmark button to activate it. A normal click only selects the button while editing the report.
When viewing the published report in Power BI Service or an exported report, bookmark interactions work through normal clicks, depending on the viewing mode.

### 3. Back Navigation Button

Added a back button to make navigation between dashboard pages easier.

### 4. Clear All Slicers Button

Added a button to reset the slicer selections and return to the default dashboard view.

### 5. Interactive Visualizations

The charts and tables allow users to explore information through Power BI's interactive filtering and cross-highlighting features.

---

## 💡 Business Insights & Applications

The dashboards can help businesses answer important questions:

**Customer Analysis**
- Which customer segments have the highest number of customers?
- Which segments contribute the most revenue?
- Which customers may need retention campaigns?
- How does customer activity change over time?

**Revenue Analysis**
- Which customer segments generate the most revenue?
- How does revenue change monthly, quarterly, and yearly?
- Which countries contribute significantly to overall revenue?

**RFM Analysis**
- Which customers have high purchasing value?
- Which customers purchase frequently?
- Which customer groups need additional attention?
- How do customer purchasing patterns differ across countries?

**Churn Analysis**
- What percentage of customers are marked as churned?
- How does churn change over time?
- Which customer segments show a higher churn percentage?
- Which customer groups may benefit from retention strategies?

These insights can support business reporting, customer relationship management, marketing decisions, and customer retention planning.

---

## 📁 Project Structure

The GitHub repository can be organized as follows:

```text
E-Commerce-Data-Analytics/
│
├── Dataset/
│   ├── online_retail_II_page_1.csv
│   ├── online_retail_II_page_2.csv
│   └── EcommerceDashboardData.xlsx
│
├── SQL/
│   └── data_cleaning.sql
│
├── Python/
│   ├── data_cleaning.py
│   └── data_validation.py
│
├── PowerBI/
│   └── Ecommerce_Dashboard.pbix
│
├── images/
│   ├── business-overview.png
│   ├── business-revenue.png
│   ├── rfm-segment.png
│   └── rfm-country.png
│
└── README.md
```

*Note: Update the filenames and folders according to the actual files you upload to GitHub.*

---

## 🚀 How to Explore This Project

1. Clone or download this repository.
2. Open the Power BI project file (`.pbix`) using Power BI Desktop.
3. If Power BI asks for the dataset location, update the source path to the cleaned Excel file.
4. Refresh the data if required.
5. Open the Business Overview page to explore customer and revenue performance.
6. Use the bookmark buttons to switch between different views.
7. Navigate to the RFM Analysis page.
8. Explore customer segments, country-level performance, and churn trends.
9. Use the slicers to filter the dashboard and explore different business scenarios.

---

## 📚 Key Learnings

Through this project, I gained practical experience in:

- Working with large raw e-commerce datasets.
- Understanding data-quality issues.
- Cleaning and preparing data using SQL Server.
- Using Python for data manipulation and validation.
- Handling missing values.
- Creating additional analytical columns.
- Understanding RFM analysis and customer segmentation.
- Analyzing customer purchasing behaviour.
- Understanding revenue and churn metrics.
- Developing interactive Power BI dashboards.
- Using Power BI slicers, bookmarks, and navigation buttons.
- Converting raw transaction data into meaningful business reports.

---

## 🔮 Future Improvements

Some possible improvements for this project include:

- Developing a customer-level retention analysis.
- Identifying high-value customers for targeted marketing.
- Adding product and category-level revenue analysis.
- Building a more detailed customer churn prediction model.
- Automating the data cleaning and refresh process.
- Creating additional business KPIs and customer behaviour reports.

---

## 👨‍💻 Author

**Data Analytics Portfolio Project**

**Technologies:** SQL Server Express 2025 | SSMS | Python | Pandas | NumPy | Power BI | Excel

This project demonstrates an end-to-end data analytics workflow, starting from raw data preparation and ending with interactive business intelligence dashboards.

**If you find this project useful, feel free to explore the repository!**
