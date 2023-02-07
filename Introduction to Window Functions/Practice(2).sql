/*
Creating a Partitioned Running Total Using Window Functions

Now, modify your query from the previous quiz to include partitions.
Still create a running total of standard_amt_usd (in the orders table) over order time, but this time,
date truncate occurred_at by year and partition by that same year-truncated occurred_at variable.

-Your final table should have three columns:
    - One with the amount being added for each row
    - One for the truncated date,
    - A final column with the running total within each year
*/
SELECT standard_amt_usd,
       DATE_TRUNC('year', occurred_at) as year,
       SUM(standard_amt_usd) OVER (PARTITION BY DATE_TRUNC('year', occurred_at) ORDER BY occurred_at) AS running_total
FROM orders
