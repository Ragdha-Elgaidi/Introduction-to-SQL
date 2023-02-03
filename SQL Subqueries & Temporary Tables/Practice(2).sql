-- The average amount of standard paper sold on the first month that any order was placed in the orders table (in terms of quantity).
-- The average amount of gloss paper sold on the first month that any order was placed in the orders table (in terms of quantity).
-- The average amount of poster paper sold on the first month that any order was placed in the orders table (in terms of quantity).
-- The total amount spent on all orders on the first month that any order was placed in the orders table (in terms of usd).

SELECT AVG(standard_qty) avg_std, AVG(gloss_qty) avg_gls, AVG(poster_qty) avg_pst
FROM orders
WHERE DATE_TRUNC('month', occurred_at) = 
     (SELECT DATE_TRUNC('month', MIN(occurred_at)) FROM orders);

SELECT SUM(total_amt_usd)
FROM orders
WHERE DATE_TRUNC('month', occurred_at) = 
      (SELECT DATE_TRUNC('month', MIN(occurred_at)) FROM orders);
