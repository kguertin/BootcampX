SELECT SUM(assignment_submissions.duration) AS total_duration
  FROM assignment_submissions JOIN students on student_id=students.id
    WHERE name = 'Ibrahim Schimmel';