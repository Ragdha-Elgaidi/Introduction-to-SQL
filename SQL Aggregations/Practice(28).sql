-- Which account used facebook most as a channel? 
SELECT a.id, a.name, w.channel, COUNT(*) use_of_channel
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
WHERE w.channel = 'facebook'
GROUP BY a.id, a.name, w.channel
ORDER BY use_of_channel DESC
LIMIT 1;
-- Note: This query above only works if there are no ties for the account that used facebook the most.
-- It is a best practice to use a larger limit number first such as 3 or 5 to see 
-- if there are ties before using LIMIT 1.
