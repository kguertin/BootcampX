SELECT cohorts.name AS cohort_name, COUNT(students.cohort_id) AS student_count
  FROM cohorts JOIN students ON cohorts.id = cohort_id
    GROUP BY cohorts.name
    HAVING COUNT(students.cohort_id) >= 18
    ORDER BY student_count;