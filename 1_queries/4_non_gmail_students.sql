SELECT name, email, id, cohort_id
  FROM students
    WHERE phone IS null OR email NOT LIKE '%@gmail.com';