# 📁 Gold Layer Data Catalog - Data Mart (Star Schema)

This catalog describes the purpose, structure, and example values for each table in the **Gold Layer** star schema, which supports analytical reporting.

---

## 📋 `gold.dim_customers`

### Purpose
Dimension table for storing customer-related descriptive attributes.

| Column Name      | Data Type | Description                                                        |
|------------------|-----------|--------------------------------------------------------------------|
| `customer_key`   | INTEGER   | Surrogate key uniquely identifying each customer (e.g., 1001)       |
| `customer_id`    | VARCHAR   | Original customer ID from CRM system (e.g., AW00011000)             |
| `customer_number`| VARCHAR   | Business-assigned customer reference number (e.g., 21768)           |
| `first_name`     | VARCHAR   | Customer's first name (e.g., Jon)                                   |
| `last_name`      | VARCHAR   | Customer's last name (e.g., Yang)                                   |
| `country`        | VARCHAR   | Country of residence (e.g., Australia)                              |
| `marital_status` | VARCHAR   | Standardized marital status (e.g., Married, Single)                 |
| `gender`         | VARCHAR   | Standardized gender (e.g., Male, Female)                            |
| `birth_date`     | DATE      | Date of birth (e.g., 1971-10-06)                                    |

---

## 📊 `gold.fact_sales`

### Purpose
Fact table capturing sales transactions and related measures.

| Column Name     | Data Type | Description                                                        |
|------------------|-----------|--------------------------------------------------------------------|
| `order_number`   | VARCHAR   | Unique sales order identifier (e.g., SO43697)                       |
| `product_key`    | INTEGER   | Foreign key to dim_products.product_key (e.g., 2001)                |
| `customer_key`   | INTEGER   | Foreign key to dim_customers.customer_key (e.g., 1001)              |
| `order_date`     | DATE      | Date when the order was placed (e.g., 2010-12-29)                   |
| `shipping_date`  | DATE      | Date when the order was shipped (e.g., 2011-01-05)                  |
| `due_date`       | DATE      | Expected delivery date (e.g., 2011-01-10)                           |
| `sales_amount`   | NUMERIC   | Total amount from sale = quantity × price (e.g., 3578.00)          |
| `quantity`       | INTEGER   | Number of units sold (e.g., 1)                                     |
| `price`          | NUMERIC   | Unit price of the product (e.g., 3578.00)                          |

---

## 📦 `gold.dim_products`

### Purpose
Dimension table containing product descriptions and categories.

| Column Name      | Data Type | Description                                                        |
|------------------|-----------|--------------------------------------------------------------------|
| `product_key`    | INTEGER   | Surrogate key uniquely identifying each product (e.g., 2001)        |
| `product_id`     | INTEGER   | Original product ID from source (e.g., 210)                         |
| `product_number` | VARCHAR   | Unique product code (e.g., CO-RF-FR-R92B-58)                        |
| `product_name`   | VARCHAR   | Full name of the product (e.g., HL Road Frame - Black- 58)          |
| `category_id`    | VARCHAR   | Code identifying the category (e.g., AC_BR)                         |
| `category`       | VARCHAR   | High-level product category (e.g., Accessories)                     |
| `sub_category`   | VARCHAR   | More detailed product category (e.g., Bike Racks)                   |
| `maintenance`    | VARCHAR   | Maintenance requirement status (e.g., Yes, No)                      |
| `cost`           | NUMERIC   | Product unit cost (e.g., 200.00)                                    |
| `product_line`   | VARCHAR   | Product line classification (e.g., Road, Mountain)                  |
| `start_date`     | DATE      | Product availability start date (e.g., 2003-07-01)                  |

---



