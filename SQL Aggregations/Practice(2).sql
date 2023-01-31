-- Find the total amount of standard_qty paper ordered in the orders table.
SELECT SUM(standard_qty) AS total_standard_sales
FROM orders;
