-- From the accounts table, display the name of the client, the coordinate as concatenated (latitude, longitude),
-- email id of the primary point of contact as 
-- <first letter of the primary_poc><last letter of the primary_poc>@<extracted nameand domain from the website>. 
SELECT NAME, CONCAT(LAT, ', ', LONG) COORDINATE, CONCAT(LEFT(PRIMARY_POC, 1), RIGHT(PRIMARY_POC, 1), '@', SUBSTR(WEBSITE, 5)) EMAIL
FROM ACCOUNTS;
