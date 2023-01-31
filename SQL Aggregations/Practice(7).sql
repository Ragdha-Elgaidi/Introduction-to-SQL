-- Via the video, you might be interested in how to calculate the MEDIAN.
-- Though this is more advanced than what we have covered so far try finding 
-- what is the MEDIAN total_usd spent on all orders?
SELECT *
FROM (SELECT total_amt_usd
   FROM orders
   ORDER BY total_amt_usd
   LIMIT 3457) AS Table1
ORDER BY total_amt_usd DESC
LIMIT 2;
