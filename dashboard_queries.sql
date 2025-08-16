--If this data were stored in a SQL table called tasks:*
--Count of tasks grouped by team and urgency
SELECT 
    team_name,
    urgency,
    COUNT(*) AS task_count
FROM tasks
GROUP BY team_name, urgency
ORDER BY team_name, urgency;
-- Total story points by urgency
SELECT 
    urgency,
    SUM(story_points) AS total_story_points
FROM tasks
GROUP BY urgency
ORDER BY total_story_points DESC;
-- Tasks completed vs pending (status column)
SELECT 
    status,
    COUNT(*) AS total_tasks
FROM tasks
GROUP BY status;
