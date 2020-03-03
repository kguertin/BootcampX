SELECT assignments.day, COUNT(assignments.*), SUM(assignments.duration)
FROM assignments
GROUP BY day
ORDER BY day;