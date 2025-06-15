/*
=============================================================
DATA WAREHOUSE - BRONZE LAYER MASTER DDL SCRIPT (PostgreSQL)
=============================================================

Layer: BRONZE (Raw Data Ingestion)
Author: Suchit Pathak
Created: June 2025

Purpose:
- Create all schemas and tables required for BRONZE layer ingestion.
- Prepare structures for ETL monitoring: audit log and load timestamps.

NOTE:
- Stored Procedures will be handled in Silver Layer ETL scripts.
- This script is production-clean for Bronze Layer only.
=============================================================
*/

-- =============================================================
-- STEP 1: Create Schema Structure
-- =============================================================

CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS audit;

-- =============================================================
-- STEP 2: CRM Source Tables
-- =============================================================

CREATE TABLE IF NOT EXISTS bronze.crm_cust_info (
    cst_id             INTEGER,
    cst_key            VARCHAR(20),
    cst_firstname      VARCHAR(50),
    cst_lastname       VARCHAR(50),
    cst_marital_status VARCHAR(10),
    cst_gndr           VARCHAR(10),
    cst_create_date    DATE
);

CREATE TABLE IF NOT EXISTS bronze.crm_prd_info (
    prd_id        INTEGER,
    prd_key       VARCHAR(50),
    prd_nm        VARCHAR(100),
    prd_cost      NUMERIC(12,2),
    prd_line      VARCHAR(10),
    prd_start_dt  DATE,
    prd_end_dt    DATE
);

CREATE TABLE IF NOT EXISTS bronze.crm_sales_details (
    sls_ord_num    VARCHAR(20),
    sls_prd_key    VARCHAR(50),
    sls_cust_id    INTEGER,
    sls_order_dt   VARCHAR(8),    -- Raw format: YYYYMMDD
    sls_ship_dt    VARCHAR(8),
    sls_due_dt     VARCHAR(8),
    sls_sales      NUMERIC(12,2),
    sls_quantity   INTEGER,
    sls_price      NUMERIC(12,2)
);

-- =============================================================
-- STEP 3: ERP Source Tables
-- =============================================================

CREATE TABLE IF NOT EXISTS bronze.erp_cust_az12 (
    cid    VARCHAR(50),
    bdate  DATE,
    gen    VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS bronze.erp_loc_a101 (
    cid    VARCHAR(50),
    cntry  VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS bronze.erp_px_cat_g1v2 (
    id          VARCHAR(20),
    cat         VARCHAR(50),
    subcat      VARCHAR(50),
    maintenance VARCHAR(10)
);

-- =============================================================
-- STEP 4: Create Audit Log Table (for tracking load times and status)
-- =============================================================

CREATE TABLE IF NOT EXISTS audit.bronze_load_audit (
    audit_id       SERIAL PRIMARY KEY,
    source_table   VARCHAR(100) NOT NULL,
    file_name      VARCHAR(255),
    load_start_ts  TIMESTAMP DEFAULT clock_timestamp(),
    load_end_ts    TIMESTAMP,
    rows_loaded    INTEGER DEFAULT 0,
    load_status    VARCHAR(20) DEFAULT 'In Progress',
    error_message  TEXT
);

-- =============================================================
-- END OF BRONZE LAYER MASTER SCRIPT
-- =============================================================
