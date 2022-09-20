SELECT cohorts.name as cohort_name, count(students.cohort_id) AS student_count
FROM cohorts
join students on cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.cohort_id) >= 18 
ORDER BY student_count DESC;