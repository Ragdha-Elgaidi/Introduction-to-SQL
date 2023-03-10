-- In the accounts table, there is a column holding the website for each company. 
-- The last three digits specify what type of web address they are using. A list of extensions (and pricing) is provided here. 
-- Pull these extensions and provide how many of each website type exist in the accounts table.
-- https://iwantmyname.com/domains
SELECT RIGHT(website, 3) AS domain, COUNT(*) num_companies
FROM accounts
GROUP BY 1
ORDER BY 2 DESC;
