const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const input = process.argv.slice(2);

pool.query(`
  SELECT students.id, students.name, cohorts.name AS cohort_id
  FROM students
  JOIN cohorts ON cohort_id = cohorts.id
  WHERE cohorts.name LIKE '${input[0].toUpperCase()}%'
  LIMIT ${input[1]}; 
`)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_id} cohort`)
    });
  })
  .catch(err => console.error('query error', error.stack));
  