# 📊 Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository! 🚀  
This portfolio project showcases a complete data warehousing and analytics workflow — from ingesting raw data to delivering meaningful insights. It follows modern best practices in **data engineering**, **data modeling**, and **analytics reporting**.

---

## 🏗️ Data Architecture Overview

This project is structured using the **Medallion Architecture** approach:

![Data Architecture](/docs/architecture-diagram.png)

- **Bronze Layer**: Raw ingested data from CRM and ERP systems (CSV files).
- **Silver Layer**: Cleaned, standardized, and enriched data tables.
- **Gold Layer**: Business-ready star schema built using views for analytics.

---

## 📖 Project Highlights

This project includes the following components:

1. **Data Architecture** – Designing a layered PostgreSQL-based warehouse (Bronze → Silver → Gold).
2. **ETL Pipelines** – Using SQL to extract, clean, transform, and load data into separate layers.
3. **Data Modeling** – Creating dimensional models with fact and dimension tables in star schema.
4. **Analytics & Reporting** – Business logic applied through SQL views for analysis-ready data.

---

## 🎯 Who Is This Project For?

This repository is ideal for:

- 📌 SQL Developers  
- 📌 Aspiring Data Engineers  
- 📌 Data Analysts working with ETL  
- 📌 Anyone looking to build a strong project for a **portfolio** or job interview  

---

## 🚀 Project Requirements

### ✅ Objective
Build a modern data warehouse using PostgreSQL (originally based on SQL Server architecture) that integrates multiple datasets for business intelligence reporting.

### 🔧 Key Specs

- **Source Systems**: ERP and CRM data from CSV files.
- **Layers**: Bronze (raw) → Silver (cleansed) → Gold (analytical).
- **Transformations**: Include null handling, standardization, business rule applications, and surrogate key creation.
- **Output**: Star schema model with fact and dimension views for reporting and dashboarding.

---

## 📁 Repository Structure
```plaintext
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│   ├── crm/
│   │   ├── cust_info.csv
│   │   ├── prd_info.csv
│   │   └── sales_details.csv
│   └── erp/
│       ├── cust_az12.csv
│       ├── loc_a101.csv
│       └── px_cat_g1v2.csv
│
├── docs/                               # Project documentation and architecture
│   ├── architecture-diagram.png
│   ├── data-integration.png
│   ├── data-mart.png
│   ├── data_catalog.md
│   └── naming_convention.md
│
├── scripts/                            # DDLs and stored procedures
│   ├── init_database.sql
│   ├── bronze/
│   │   └── ddl_bronze.sql
│   ├── silver/
│   │   ├── ddl_silver.sql
│   │   └── proc_load_silver_layer.sql
│   └── gold/
│       └── ddl_gold.sql
│
├── tests/                              # Test scripts and quality checks
│   ├── quality_check_silver_layer.sql
│   └── quality_check_gold_layer.sql
│
├── README.md                           # Project overview and structure
├── LICENSE                             # License info
├── .gitignore                          # Git ignore file
└── requirements.txt                    # Dependencies and tools



👨‍💻 About Me
Hi! I'm Suchit Pathak, a passionate Data Analyst & aspiring Data Engineer based in the UK 🇬🇧.
I love transforming raw data into structured insights that empower smarter decisions.

With a strong foundation in SQL, Python, PostgreSQL, and data modeling, I specialize in building clean, scalable data pipelines and applying robust analytics workflows that bridge the gap between data engineering and business intelligence.

🔍 What I'm Exploring
Currently diving deeper into:

Advanced Data Warehousing

Business Intelligence

Analytics Engineering

📊 What I Do Best
Creating robust ETL pipelines

Designing dimensional data models

Building compelling visual analytics dashboards

🧠 Curiosity Drives Me
I'm always eager to explore how data can solve real-world business problems.

📎 Portfolio: suchit0807.github.io/suchit-portfolio
🔗 LinkedIn: linkedin.com/in/suchit-pathak

Let’s connect and talk data!
