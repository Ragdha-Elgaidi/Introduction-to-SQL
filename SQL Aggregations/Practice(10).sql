-- Via what channel did the most recent (latest) web_event occur, which account was associated with this web_event?
-- Your query should return only three values 
-- the date, channel, and account name.
SELECT w.occurred_at, w.channel, a.name
FROM web_events w
JOIN accounts a
ON w.account_id = a.id 
ORDER BY w.occurred_at DESC
LIMIT 1;
