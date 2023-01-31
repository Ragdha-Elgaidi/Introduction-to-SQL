-- When was the earliest order ever placed? You only need to return the date.
SELECT MIN(occurred_at) 
FROM orders;
-- Try performing the same query as in question 1 without using an aggregation function
SELECT occurred_at 
FROM orders 
ORDER BY occurred_at
LIMIT 1;
