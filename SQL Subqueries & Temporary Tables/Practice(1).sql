-- pull the first month/year combo from the orders table.
SELECT DATE_TRUNC('month', MIN(occurred_at)) 
FROM orders;
