-- Which category has the highest success percentage? How many projects have been successful?
SELECT
    category,
    COUNT(state)
FROM projects
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;
/*
category, COUNT(state)
Film & Video, 62694
*/

