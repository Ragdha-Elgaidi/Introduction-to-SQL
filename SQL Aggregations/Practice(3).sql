-- Find the total amount for each individual order that was spent on standard and gloss paper in the orders table. This should give a dollar amount for each order in the table. 
SELECT standard_amt_usd + gloss_amt_usd AS total_standard_gloss
FROM orders;
