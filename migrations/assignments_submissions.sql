CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);


-- SELECT student.name as student_name, cohort.name as cohort_name, cohort.start_date as cohort_start_date, students.name as student_start_name
-- FROM students JOIN cohorts on cohort_id = cohort.id