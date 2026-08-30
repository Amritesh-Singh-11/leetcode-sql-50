-- Problem: Rising Temperature
-- Problem ID: 197
-- Difficulty: Easy
-- Topics: Self JOIN, Date Functions


-- Select the ID of the day whose temperature is higher than the previous day.
SELECT w1.id

-- Use the Weather table as the current day's data.
FROM Weather w1

-- Join the table with itself to compare consecutive days.
LEFT JOIN Weather w2

-- Match w1 with the record from exactly one day before.
ON w1.recordDate - INTERVAL 1 DAY = w2.recordDate

-- Select days where the current temperature is higher than the previous day.
WHERE w1.temperature > w2.temperature;