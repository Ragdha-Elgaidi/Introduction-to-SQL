-- Which month did Parch & Posey have the greatest sales in terms of total dollars?
-- Are all months evenly represented by the dataset?
SELECT DATE_PART('month', occurred_at) ord_month, SUM(total_amt_usd) total_spent
FROM orders
WHERE occurred_at BETWEEN '2014-01-01' AND '2017-01-01'
GROUP BY 1
ORDER BY 2 DESC; 
-- In order for this to be 'fair', we should remove the sales from 2013 and 2017. 
-- When we look at the yearly totals, you might notice that 2013 and 2017 have much smaller totals than all other years. 
-- If we look further at the monthly data, we see that for 2013 and 2017 there is only one month of sales for each of these years (12 for 2013 and 1 for 2017).
-- Therefore, neither of these is evenly represented. 
-- Sales have been increasing year over year, with 2016 being the largest sales to date.
-- At this rate, we might expect 2017 to have the largest sales.
