SELECT name, COUNT(assistance_requests.id) as total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
GROUP BY teachers.name
HAVING name = 'Waylon Boehm';

-- OTHER OPTIONS THAT ALSO WORK BELOW

-- SELECT count(assistance_requests.*) as total_assistances, teachers.name
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY teachers.name;

-- SELECT name, COUNT(assistance_requests.id) as total_assistances
-- FROM teachers
-- JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY teachers.name;