-- Create the online_sales table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    order_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    product_id INTEGER NOT NULL
);

-- Insert more sample data
INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-15', 125.50, 101),
(2, '2024-01-20', 75.00, 102),
(3, '2024-01-28', 200.75, 101),
(4, '2024-02-05', 50.20, 103),
(5, '2024-02-12', 150.00, 102),
(6, '2024-03-01', 90.80, 101),
(7, '2024-03-18', 300.00, 104),
(8, '2024-03-25', 65.30, 103),
(9, '2024-04-10', 180.50, 102),
(10, '2024-04-22', 110.00, 101),
(11, '2025-01-03', 220.00, 105),
(12, '2025-01-19', 85.75, 103),
(13, '2025-02-08', 160.25, 101),
(14, '2025-02-21', 70.00, 104),
(15, '2025-03-12', 250.50, 102),
(16, '2025-04-01', 130.00, 106),
(17, '2025-04-15', 95.20, 101),
(18, '2025-04-28', 175.80, 104),
(19, '2025-05-10', 210.40, 102),
(20, '2025-05-22', 60.90, 103),
(21, '2025-06-05', 140.60, 105),
(22, '2025-06-18', 280.15, 101);

-- Analyze monthly revenue and order volume

    SELECT
    YEAR(order_date) AS sales_year,
    MONTH(order_date) AS sales_month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_order_volume
FROM
    orders
GROUP BY
    sales_year, sales_month
ORDER BY
    sales_year, sales_month
LIMIT 0, 1000;

-- Analyze monthly revenue and order volume for the year 2024 (MySQL)
SELECT
    YEAR(order_date) AS sales_year,
    MONTH(order_date) AS sales_month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_order_volume
FROM
    orders
WHERE
    YEAR(order_date) = 2024
GROUP BY
    sales_year, sales_month
ORDER BY
    sales_year, sales_month;

-- Analyze monthly revenue and order volume for April 2025 (MySQL)
SELECT
    YEAR(order_date) AS sales_year,
    MONTH(order_date) AS sales_month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_order_volume
FROM
    orders
WHERE
    YEAR(order_date) = 2025 AND MONTH(order_date) = 4
GROUP BY
    sales_year, sales_month
ORDER BY
    sales_year, sales_month;
