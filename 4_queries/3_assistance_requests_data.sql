SELECT teachers.name, students.name, assignments.name, assistance_requests.completed_at - assistance_requests.started_at AS duration
  FROM assistance_requests 
    JOIN teachers ON teachers.id = teacher_id
    JOIN students ON students.id = student_id
    JOIN assignments ON assignments.id = assignment_id
      ORDER BY duration;