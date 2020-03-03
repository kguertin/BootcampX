SELECT COUNT(assistance_requests.*) AS total_assistance, teachers.name
  FROM assistance_requests JOIN teachers ON teachers.id = teacher_id
    WHERE name = 'Waylon Boehm'
    GROUP BY teachers.name;