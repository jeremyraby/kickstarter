-- Which category has the highest success percentage?
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

-- How many projects have been successful?
SELECT
    COUNT(state)
FROM projects
WHERE state = 'Successful';

-- 133,851