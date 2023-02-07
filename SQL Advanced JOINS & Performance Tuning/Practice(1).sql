-- Finding Matched and Unmatched Rows with FULL OUTER JOIN
-- You’re not likely to use FULL JOIN (which can also be written as FULL OUTER JOIN) too often, 
--but the syntax is worth practicing anyway.
--LEFT JOIN and RIGHT JOIN each return unmatched rows from one of the tables—FULL JOIN returns unmatched rows from both tables.
--FULL JOIN is commonly used in conjunction with aggregations to understand the amount of overlap between two tables.
--Say you're an analyst at Parch & Posey and you want to see:
   -- each account who has a sales rep and each sales rep that has an account (all of the columns in these returned rows will be full)
   -- but also each account that does not have a sales rep and each sales rep that does not have an account (some of the columns in these returned rows will be empty)

--This type of question is rare, but FULL OUTER JOIN is perfect for it. In the following SQL Explorer, 
-- write a query with FULL OUTER JOIN to fit the above described Parch & Posey scenario
--(selecting all of the columns in both of the relevant tables, accounts and sales_reps)

SELECT *
  FROM accounts
 FULL JOIN sales_reps ON accounts.sales_rep_id = sales_reps.id
--If unmatched rows existed (they don't for this query), you could isolate them by adding the following line to the end of the query:
WHERE accounts.sales_rep_id IS NULL OR sales_reps.id IS NULL
