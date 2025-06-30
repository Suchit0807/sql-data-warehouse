# 🧾 Naming Conventions

This document outlines the standardized naming conventions adopted across all layers of the data warehouse, including schemas, tables, views, columns, and stored procedures. These guidelines ensure consistency, clarity, and maintainability throughout the project.

---

## 📚 Table of Contents

- General Principles  
- Table Naming Standards  
  - Bronze Layer  
  - Silver Layer  
  - Gold Layer  
- Column Naming Standards  
  - Surrogate Keys  
  - Technical Columns  
- Stored Procedure Naming

---

## ✅ General Principles

- **Format**: Use `snake_case` with lowercase letters and underscores (`_`) separating words.
- **Language**: All object names should be in English.
- **Avoid Conflicts**: Do not use SQL reserved keywords as names for tables, columns, or procedures.

---

## 🗂️ Table Naming Standards

### 🥉 Bronze Layer

- **Format**: `<source>_<original_table_name>`
- **Rule**: Keep table names exactly as in the source system (no renaming).
- **Source Prefix**: Use a prefix like `crm`, `erp`, etc., to indicate the system.
- **Example**:  
  `crm_cust_info` → Raw customer table from CRM system.

---

### 🥈 Silver Layer

- **Format**: `<source>_<entity>`
- **Rule**: Names should still reflect the original system and table structure.
- **Example**:  
  `erp_px_cat_g1v2` → Cleaned product category table from ERP source.

---

### 🥇 Gold Layer

- **Format**: `<category>_<entity>`
- **Purpose**: Focused on business meaning and role of the table (e.g., facts, dimensions).
- **Example**:  
  - `dim_customers` → Customer dimension table  
  - `fact_sales` → Sales fact table

#### Glossary of Category Prefixes

| Prefix    | Purpose              | Example(s)                   |
|-----------|----------------------|-------------------------------|
| `dim_`    | Dimension table       | `dim_products`, `dim_customers` |
| `fact_`   | Fact/transaction table| `fact_sales`                  |
| `report_` | Reporting summary     | `report_sales_monthly`        |

---

## 🧱 Column Naming Standards

### 🔑 Surrogate Keys

- **Format**: `<entity>_key`
- **Purpose**: Denotes surrogate primary keys in dimension tables.
- **Example**:  
  `product_key` → Surrogate key in `dim_products`.

---

### ⚙️ Technical Metadata Columns

- **Format**: `dwh_<purpose>`
- **Prefix**: `dwh_` indicates metadata or system-generated values.
- **Example**:  
  `dwh_load_date` → Timestamp of when data was loaded into the warehouse.

---

## 🧩 Stored Procedure Naming

- **Format**: `load_<layer>`
- **Layer**: Indicates the stage being loaded (`bronze`, `silver`, or `gold`).
- **Example**:  
  - `load_bronze` → Loads raw data into Bronze layer  
  - `load_silver` → Loads transformed data into Silver layer

---

By adhering to these naming conventions, we ensure readability, scalability, and long-term maintainability across all components of the warehouse solution.
