# Task_6





# 📊 Sales Trend Analysis (SQL)

## Objective  
Analyze **monthly revenue** and **order volume** using SQL on the `online_sales.orders` table.

## Tools  
- SQL (MySQL )

## Dataset  
- `orders(order_id, order_date, amount, product_id)`

## Key Steps  
- Extract `YEAR` and `MONTH` from `order_date`  
- `SUM(amount)` for revenue  
- `COUNT(DISTINCT order_id)` for volume  
- `GROUP BY year, month`  
- Sort with `ORDER BY`

## Sample SQL  
```sql
SELECT 
  EXTRACT(YEAR FROM order_date) AS order_year,
  EXTRACT(MONTH FROM order_date) AS order_month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM online_sales.orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
```

## Outcome  
Understand how to group and analyze sales trends over time using SQL.

