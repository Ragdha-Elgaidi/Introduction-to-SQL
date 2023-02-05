-- What is the top channel used by each account to market products?
-- How often was that same channel used? 
-- However, we will need to do two aggregations and two subqueries to make this happen.
-- Let's find the number of times each channel is used by each account.
-- So we will need to count the number of rows by Account and Channel. This count will be our first aggregation needed.
SELECT accounts.name, web_events.channel, Count(*)
FROM accounts
JOIN web_events ON accounts.id = Web_events.account_id
GROUP BY 1, 2
ORDER BY 1,3
-- Ok, now we have how often each channel was used by each account. How do we only return the most used account (or accounts if multiple are tied for the most)?
-- We need to see which usage of the channel in our first query is equal to the maximum usage channel for that account. So, a keyword should jump out to you - maximum. This will be our second aggregation and it utilizes the data from the first table we returned so this will be our subquery. Let's take the maximum count from each account to create a table with the maximum usage channel amount per account.
SELECT T1.name, Max(T1.count)
FROM (
       SELECT accounts.name as name, web_events.channel as channel, Count(*) as count
       FROM accounts
       JOIN web_events ON accounts.id = Web_events.account_id
       GROUP BY 1, 2
       ORDER BY 1,3
) as T1
GROUP BY 1

-- So now we have the MAX usage number for a channel for each account. Now we can use this to filter the original table to find channels for each account that match the MAX amount for their account.
-- We do this by putting this in the WHERE clause
SELECT t3.id, t3.name, t3.channel, t3.ct
FROM (SELECT a.id, a.name, we.channel, COUNT(*) ct
     FROM accounts a
     JOIN web_events we
     On a.id = we.account_id
     GROUP BY a.id, a.name, we.channel) T3
JOIN (SELECT t1.id, t1.name, MAX(ct) max_chan
      FROM (SELECT a.id, a.name, we.channel, COUNT(*) ct
            FROM accounts a
            JOIN web_events we
            ON a.id = we.account_id
            GROUP BY a.id, a.name, we.channel) t1
      GROUP BY t1.id, t1.name) t2
ON t2.id = t3.id AND t2.max_chan = t3.ct
ORDER BY t3.id;
