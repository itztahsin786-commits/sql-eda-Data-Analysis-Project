---- data explore
/*
===============================================================================
Purpose:
    - To explore the structure of the database, including the list of tables and their schemas.
    - To inspect the columns and metadata for specific tables.

Table Used:
    - INFORMATION_SCHEMA.TABLES
    - INFORMATION_SCHEMA.COLUMNS
===============================================================================
*/

--- explore all objects in database 

 select * from INFORMATION_SCHEMA.TABLES



 --- explore all columns in the database 


 select * from INFORMATION_SCHEMA.COLUMNS
 where table_name = 'dim_customers' 