-- Problem: User Activity for the Past 30 Days I
-- Problem ID: 1141
-- Difficulty: Easy
-- Topics: DATE_SUB, BETWEEN, COUNT, DISTINCT, GROUP BY


-- Select the activity date and count the unique active users.
SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users

-- Get the activity records from the Activity table.
FROM Activity

-- Select activities within the 30-day period ending on 2019-07-27.
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY)
                        AND '2019-07-27'

-- Calculate the number of active users separately for each day.
GROUP BY activity_date;