-- Find the mean (AVERAGE) amount spent per order on each paper type, as well asthe mean amount of each paper type purchased per order.
-- Your final answer should have 6 values - one for each paper type for the average number of sales,as well as the average amount.

SELECT AVG(standard_qty) mean_standard, AVG(gloss_qty) mean_gloss, 
        AVG(poster_qty) mean_poster, AVG(standard_amt_usd) mean_standard_usd, 
        AVG(gloss_amt_usd) mean_gloss_usd, AVG(poster_amt_usd) mean_poster_usd
FROM orders;
