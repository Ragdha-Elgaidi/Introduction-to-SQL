-- When did the most recent (latest) web_event occur?
SELECT MAX(occurred_at)
FROM web_events;
-- Try to perform the result of the previous query without using an aggregation function.
SELECT occurred_at
FROM web_events
ORDER BY occurred_at DESC
LIMIT 1;
