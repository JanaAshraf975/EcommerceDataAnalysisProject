# EcommerceDataAnalysisProject
# Brazilian E-Commerce Data Analytics Project

## 📌 Project Overview

This project focuses on analyzing Brazilian e-commerce data to
understand sales performance, customer behavior, payment methods,
delivery performance, and product category trends.

The project follows an end-to-end data analytics workflow,
starting with data cleaning and preprocessing using Python,
followed by data warehousing in Snowflake, data transformation
and dimensional modeling using dbt, and data visualization
using Power BI.

The goal is to transform raw e-commerce data into structured,
analytics-ready datasets that support business insights and
data-driven decision-making.

---

## 🎯 Project Objectives

- Clean and preprocess raw e-commerce datasets.
- Store and organize data in Snowflake.
- Build staging models using dbt.
- Apply dimensional modeling concepts using fact and dimension tables.
- Prepare analytical datasets for reporting.
- Build interactive Power BI dashboards.
- Analyze sales, payments, customers, products, and delivery performance.

---

## 🛠️ Tools & Technologies

- **Python:** Data cleaning and preprocessing.
- **Pandas & NumPy:** Data manipulation and analysis.
- **Jupyter Notebook:** Developing and documenting cleaning workflows.
- **Snowflake:** Cloud data warehouse.
- **dbt:** SQL transformations, data modeling, and testing.
- **Power BI:** Data visualization and interactive dashboards.
- **SQL:** Data transformation and analytical querying.
- **Git & GitHub:** Version control and project documentation.

---

## 📂 Dataset

The project uses the Brazilian E-Commerce Public Dataset
by Olist, available on Kaggle.

The dataset contains nine CSV files covering different aspects
of the e-commerce business:

1. Customers
2. Geolocation
3. Order Items
4. Order Payments
5. Order Reviews
6. Orders
7. Products
8. Sellers
9. Product Category Name Translation

These datasets provide information about orders, customers,
products, sellers, payments, reviews, and delivery locations.

**Dataset Source:**
[ Brazilian E-Commerce Public Dataset by Olist on Kaggle ](
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce
)

---

## 🔄 Project Workflow

### 1. Data Cleaning & Preprocessing — Python

Each dataset is processed using a separate Jupyter Notebook.

The cleaning workflow includes:

- Inspecting dataset structure and data types.
- Identifying missing values and duplicate records.
- Checking data consistency and quality.
- Handling data quality issues where necessary.
- Converting columns to appropriate data types.
- Saving the cleaned datasets as CSV files.

**Libraries:** Pandas and NumPy.

### 2. Data Warehousing — Snowflake

The cleaned datasets are loaded into Snowflake to provide
a centralized environment for data storage and transformation.

Snowflake serves as the data warehouse for the project.

### 3. Data Transformation — dbt

dbt is used to transform the data using SQL and organize
the transformation workflow into different modeling layers.

**Staging Layer**
- Organizes source data into staging models.
- Standardizes data for downstream transformations.
- Provides a consistent foundation for analytical modeling.

**Marts Layer**
- Organizes analytical models into fact and dimension tables.
- Applies dimensional modeling concepts.
- Prepares structured datasets for Power BI reporting.

The intended analytical model follows a dimensional modeling
approach to support reporting and analysis.

### 4. Data Visualization — Power BI

Power BI is used to build interactive dashboards based on
the transformed data.

The analysis focuses on business areas such as:

- Sales and order performance.
- Customer behavior.
- Product category performance.
- Payment methods.
- Delivery performance.
- Customer review scores.

The dashboards aim to help users explore business trends
and identify useful insights from the data.

---

## 📊 Key Business Questions

The project aims to investigate questions such as:

- How does order volume change over time?
- Which product categories generate the highest sales?
- Which payment methods are most commonly used?
- How does delivery performance compare with estimated delivery dates?
- How do customer review scores vary?
- Which regions have higher order activity?
- What patterns can be identified in customer purchasing behavior?

---

## 📁 Project Structure

```text
Brazilian-Ecommerce/
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── notebooks/
│   ├── customers_cleaning.ipynb
│   ├── geolocation_cleaning.ipynb
│   ├── order_items_cleaning.ipynb
│   ├── order_payments_cleaning.ipynb
│   ├── order_reviews_cleaning.ipynb
│   ├── orders_cleaning.ipynb
│   ├── products_cleaning.ipynb
│   ├── sellers_cleaning.ipynb
│   └── category_translation_cleaning.ipynb
│
├── dbt/
│   ├── dbt_project.yml
│   └── models/
│       ├── staging/
│       └── marts/
│           ├── dimensions/
│           └── facts/
│
├── powerbi/
│   ├── dashboard.pbix
│   └── screenshots/
│
├── requirements.txt
├── .gitignore
└── README.md

Note: The structure above is a suggested organization.
Folder and file names should match the actual project files.

🚀 Skills Demonstrated
Data cleaning and preprocessing.
Exploratory data inspection and data quality checks.
SQL-based data transformation.
Cloud data warehousing with Snowflake.
dbt staging and dimensional modeling.
Fact and dimension table design.
Data pipeline development.
Business intelligence and dashboard development.
Translating business questions into analytical requirements.
👩‍💻 Project Status

This project is being developed as an end-to-end
data analytics portfolio project.

The workflow covers Python preprocessing, Snowflake
data warehousing, dbt transformations, and Power BI
visualization.

Additional documentation, modeling, and dashboard
improvements may be added as development progresses.
