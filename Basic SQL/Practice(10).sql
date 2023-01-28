-- Using the orders table:
-- Write a query that finds the percentage of revenue that comes from poster paper for each order.
-- You will need to use only the columns that end with _usd. (Try to do this without using the total column.) 
-- Display the id and account_id fields also.
SELECT id, account_id, 
poster_amt_usd/(standard_amt_usd + gloss_amt_usd + poster_amt_usd) AS post_per
FROM orders
LIMIT 10;
