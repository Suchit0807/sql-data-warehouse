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
├── datasets/                # Source data files (CSV)
│   ├── crm/
│   └── erp/
├── docs/                    # Documentation and diagrams
│   ├── architecture-diagram.png
│   ├── data-integration.png
│   ├── data-mart.png
│   ├── data_catalog.md
│   └── naming_convention.md
├── scripts/                 # DDLs and stored procedures
│   ├── ddl_bronze.sql
│   ├── ddl_silver.sql
│   ├── ddl_gold.sql
│   └── sp_load_silver_layer_data.sql
├── tests/                   # Data quality checks for each layer
│   ├── quality_check_silver_layer.sql
│   └── quality_check_gold_layer.sql
├── README.md                # Project overview and introduction (this file)
