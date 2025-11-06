-----Dimensions Exploration
/*
===============================================================================
Purpose:
    - To explore the structure of dimension tables.
	
SQL Functions Used:
    - DISTINCT
    - ORDER BY
===============================================================================
*/

--- explore all customers our customers come form 

 select distinct country from gold.dim_customers


 ---- explore all categories "the major division "

 select distinct category from gold.dim_products

 select distinct category , subcategory , product_name 
 from gold.dim_products
 order by 1,2,3