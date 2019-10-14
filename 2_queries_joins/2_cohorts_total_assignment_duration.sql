SELECT SUM(assignment_submissions.duration) AS total_duration
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'FEB12';


-- SELECT SUM(assignment_submissions.duration) AS total_duration
-- FROM assignment_submissions
-- JOIN students ON assignment_submissions.student_id = students.id
-- WHERE students.cohort_id IN (SELECT students.cohort_id
--   FROM students 
--   JOIN cohorts ON cohorts.id = students.cohort_id
--   WHERE cohorts.name = 'FEB12');