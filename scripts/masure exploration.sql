---- masure exploration 
/*
===============================================================================
Purpose:
    - To calculate aggregated metrics (e.g., totals, averages) for quick insights.
    - To identify overall trends or spot anomalies.

SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/
 

 --- find the total sales 
  select sum (sales_amount)as total_sales 
  from gold.fact_sales

  ---- find how many iteam are sold 
  select sum ( quantity) as total_quantity 
  from gold.fact_sales

  ---- find the average selling price 
  select avg(price) as avg_price 
  from gold.fact_sales


  ----find the total number of orders 
  select  count (order_number) as total_orders
  from gold.fact_sales
  SELECT COUNT(DISTINCT order_number) AS total_orders 
  FROM gold.fact_sales


  ---- find the total number of product 
  select count ( product_name) as total_product 
  from gold.dim_products
  select count (distinct product_name) as total_product 
  from gold.dim_products

  ---- find the total number of customers 
  select count (customer_key)as total_customers
  from gold.dim_customers

  ----- find the total number of customers that has placed an order

  select count (distinct customer_key) as total
  from gold.fact_sales

  ---- generate a report that shows all key metrics of business

  select 'total sales' as measure_name,sum (sales_amount) as mesure_value 
  from gold.fact_sales
  union all 
  select 'total quantity' ,sum (quantity) 
  from gold.fact_sales
  union all 
  select 'average price ', avg(price)
  from gold.fact_sales
  union all 
  select 'total nr.orders',count(distinct order_number)
  from gold.fact_sales
  union all 
  select 'total nr.product',count ( product_name)
  from gold.dim_products
  union all 
  select 'total nr.customers',count(customer_key)
  from gold.dim_customers
