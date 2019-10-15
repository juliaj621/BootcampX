SELECT COUNT(assistance_requests.id) as total_assistances, name
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
GROUP BY students.name
HAVING name = 'Elliot Dickinson';
