/*
=============================================================
Create Silver Layer Tables - Data Warehouse Project
=============================================================

Script Purpose:
    Creates cleaned and standardized tables for the Silver Layer.
    These are structured based on the transformed data from the Bronze Layer.

Schemas Used:
    silver

Assumptions:
    - The 'silver' schema already exists.
    - Bronze layer data is cleaned and ready for transformation.

=============================================================
*/

-- ================================================
-- Drop Tables If They Exist (Optional Safety Step)
-- ================================================

DROP TABLE IF EXISTS silver.crm_cust_info;
DROP TABLE IF EXISTS silver.crm_prd_info;
DROP TABLE IF EXISTS silver.crm_sales_details;
DROP TABLE IF EXISTS silver.erp_cust_az12;
DROP TABLE IF EXISTS silver.erp_loc_a101;
DROP TABLE IF EXISTS silver.erp_px_cat_g1v2;

-- ================================================
-- Create: silver.crm_cust_info
-- ================================================

CREATE TABLE silver.crm_cust_info (
    cst_id               INTEGER,
    cst_key              VARCHAR,
    cst_firstname        VARCHAR,
    cst_lastname         VARCHAR,
    cst_marital_status   VARCHAR,
    cst_gndr             VARCHAR,
    cst_create_date      DATE,
    dwh_create_date      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ================================================
-- Create: silver.crm_prd_info
-- ================================================

CREATE TABLE silver.crm_prd_info (
    prd_id         INTEGER,
    cat_id         VARCHAR,
    prd_key        VARCHAR,
    prd_nm         VARCHAR,
    prd_cost       NUMERIC(10,2),
    prd_line       VARCHAR,
    prd_start_dt   DATE,
    prd_end_dt     DATE,
    dwh_create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ================================================
-- Create: silver.crm_sales_details
-- ================================================

CREATE TABLE silver.crm_sales_details (
    sls_ord_num     VARCHAR,
    sls_prd_key     VARCHAR,
    sls_cust_id     INTEGER,
    sls_order_dt    DATE,
    sls_ship_dt     DATE,
    sls_due_dt      DATE,
    sls_sales       NUMERIC(10,2),
    sls_quantity    INTEGER,
    sls_price       NUMERIC(10,2),
    dwh_create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ================================================
-- Create: silver.erp_cust_az12
-- ================================================

CREATE TABLE silver.erp_cust_az12 (
    cid              VARCHAR,
    bdate            DATE,
    gen              VARCHAR,
    dwh_create_date  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ================================================
-- Create: silver.erp_loc_a101
-- ================================================

CREATE TABLE silver.erp_loc_a101 (
    cid              VARCHAR,
    cntry            VARCHAR,
    dwh_create_date  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ================================================
-- Create: silver.erp_px_cat_g1v2
-- ================================================

CREATE TABLE silver.erp_px_cat_g1v2 (
    id               INTEGER,
    cat              VARCHAR,
    subcat           VARCHAR,
    maintenance      VARCHAR,
    dwh_create_date  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ================================================
-- End of Silver Layer Table Creation Script
-- ================================================

