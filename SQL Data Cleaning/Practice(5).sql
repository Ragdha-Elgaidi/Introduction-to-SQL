-- Suppose the company wants to assess the performance of all the sales representatives.
-- Each sales representative is assigned to work in a particular region. 
-- To make it easier to understand for the HR team, display the concatenated sales_reps.id, ‘_’ 
-- (underscore), and region.name as EMP_ID_REGION for each sales representative. 

SELECT CONCAT(SALES_REPS.ID, '_', REGION.NAME) EMP_ID_REGION, SALES_REPS.NAME
FROM SALES_REPS
JOIN REGION
ON SALES_REPS.REGION_ID = REGION_ID;
