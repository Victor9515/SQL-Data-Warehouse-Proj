/*
--------------------------------
Create Database and Schemas
--------------------------------
Script Purpose:
  The script will create new database named 'DataWarehouse' after a check verifies existence. 
  If the database exists, it is dropped and recreated. Furthermore, the script creates three
  schemas within the database: 'bronze', 'silver', and 'gold'.

Warning: 
  By running the script, the entire 'DataWarehouse'database will be dropped if it exists.
  All data will be deleted permanently. Ensure proper backups before running script.

*/


--System DB that allows for other DB creation
USE master;

--Drop and create new 'DataWarehouse' database
--IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END

 --Create 'DataWarehouse' Schemas 
CREATE DATABASE DataWarehouse;
Use DataWarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
