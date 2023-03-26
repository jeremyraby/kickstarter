-- Which category has the highest success percentage?
SELECT
    category,
    COUNT(category) AS 'total_projects',
    COUNT(CASE WHEN state = 'Successful' THEN 1 END) AS 'total_successful',
    ROUND((COUNT(CASE WHEN state = 'Successful' THEN 1 END) * 100.8) / COUNT(category), 2) AS 'percent_successful'
FROM projects
GROUP BY 1
ORDER BY 4 DESC
LIMIT 1;
/*
category, total_projects, total_successful, percent_successful
Dance, 3767, 2338, 62.56
*/

/*
How many projects have been successful?
category, total_successful
Dance, 2338
*/

-- What project with a goal over $1,000 USD, had the biggest Goal Completion % (Pledged / Goal)? 

SELECT
    name,
    goal,
    pledged,
    (pledged / goal) AS 'goal completion'
FROM projects
WHERE goal > 1000
GROUP BY 1
ORDER BY 4 DESC
LIMIT 1;

/*
name, goal, pledged, goal completion
VULFPECK /// The Beautiful Game, 1, 104278, 104278
*/
-- How much money was pledged?
  -- $104,278