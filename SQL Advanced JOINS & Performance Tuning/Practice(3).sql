-- Pretreating Tables before doing a UNION
-- Add a WHERE clause to each of the tables that you unioned in the query above,
-- filtering the first table where name equals Walmart and filtering the second table where name equals Disney
SELECT *
    FROM accounts
    WHERE name = 'Walmart'

UNION ALL

SELECT *
  FROM accounts
  WHERE name = 'Disney'
