-- Appending Data via UNION
-- Write a query that uses UNION ALL on two instances (and selecting all columns) of the accounts table
SELECT *
    FROM accounts

UNION ALL

SELECT *
  FROM accounts
-- UNION only appends distinct values. More specifically, when you use UNION, the dataset is appended, 
-- and any rows in the appended table that are exactly identical to rows in the first table are dropped. 
-- If you’d like to append all the values from the second table, use UNION ALL.
