SELECT name, COUNT(assistance_requests.*) as total_assisted_requests
FROM students 
JOIN assistance_requests ON assistance_requests.student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;
