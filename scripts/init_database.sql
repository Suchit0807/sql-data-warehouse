/*
=============================================================
Create Database and Schemas (PostgreSQL Version)
=============================================================
Script Purpose:
    This script creates a new database named 'data_warehouse_project'. 
    After switching to the new database, it creates three schemas:
    'bronze', 'silver', and 'gold'.

WARNING:
    In PostgreSQL, dropping and recreating the database requires connecting to a different database.
    Be cautious when dropping databases.
*/

/* 
-- IMPORTANT: This part should be executed manually in pgAdmin or psql:
-- You cannot drop the current database you're connected to.
-- Make sure you're connected to the default 'postgres' database before running:
*/

DROP DATABASE IF EXISTS data_warehouse_project;
CREATE DATABASE data_warehouse_project;

/* 
-- After database creation, connect to 'data_warehouse_project' before running below schema creation script.
*/

-- Create Schemas
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;
