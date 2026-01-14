# SQL-Data-Warehouse-Proj

**#Project Description**

This project demonstrates the end-to-end design and implementation of a Data Warehouse utilizing Microsoft SQL Server. The primary objective was to engineer a robust ETL (Extract, Transform, Load) pipeline capable of consolidating disparate data sources (CRM and ERP systems) into a centralized repository optimized for analytical reporting and decision-making.

**#Architectural Framework**

The solution adheres to the Medallion Architecture methodology, processing data through distinct layers to ensure integrity and performance:

Bronze Layer (Raw Ingestion):
-Serves as the initial landing zone for raw CSV data.
-Data is ingested in its native format to preserve historical accuracy and auditability.

Silver Layer (Transformation & Cleansing):
-Focuses on data normalization and quality assurance.
-Utilizes T-SQL scripts to standardize data types, reconcile null values, and remove duplicates, ensuring a cohesive dataset.

Gold Layer (Dimensional Modeling):
-The final consumption layer modeled into a Star Schema.
-Consists of Fact tables (transactional metrics) and Dimension tables (descriptive attributes) to maximize query performance for Business Intelligence (BI) tools.

**#Technical Stack**

Database Management: Microsoft SQL Server
Query Language: T-SQL (DDL for schema creation, DML for data manipulation)
Development Environment: SQL Server Management Studio (SSMS)
Core Concepts: ETL Pipeline Design, Data Normalization, Star Schema, Data Warehousing

**#Key Competencies Demonstrated**

Data Pipeline Engineering: Designed automated workflows to move data seamlessly from source to destination.
Data Modeling: Implemented a Star Schema to facilitate high-performance aggregations and simplify report generation.
Data Quality Management: Established strict validation rules within the Silver layer to prevent "garbage in, garbage out" scenarios in downstream analytics.
