-- Find the total number of times each type of channel from the web_events was used. 
-- Your final table should have two columns
-- the channel and the number of times the channel was used.
SELECT w.channel, COUNT(*)
FROM web_events w
GROUP BY w.channel
