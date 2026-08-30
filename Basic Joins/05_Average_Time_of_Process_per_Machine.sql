-- Problem: Average Time of Process per Machine
-- Problem ID: 1661
-- Difficulty: Easy
-- Topics: INNER JOIN, Aggregate Functions, GROUP BY, ROUND


-- Select the machine ID and calculate the average processing time.
SELECT a1.machine_id,

-- Calculate the average time by dividing total processing time by the number of processes.
ROUND(SUM(a2.timestamp - a1.timestamp) / COUNT(*), 3) AS processing_time

-- Use Activity as the source table for process start records.
FROM Activity a1

-- Join Activity with itself to match each start with its corresponding end.
INNER JOIN Activity a2

-- Match records belonging to the same machine and process.
ON a1.machine_id = a2.machine_id
AND a1.process_id = a2.process_id

-- a1 represents the start of the process.
AND a1.activity_type = 'start'

-- a2 represents the end of the process.
AND a2.activity_type = 'end'

-- Calculate the average processing time separately for each machine.
GROUP BY a1.machine_id;