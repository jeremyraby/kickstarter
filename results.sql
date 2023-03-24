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