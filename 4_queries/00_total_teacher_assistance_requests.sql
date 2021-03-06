SELECT name, COUNT(assistance_requests.*) as total_assisted_requests
FROM teachers 
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;
