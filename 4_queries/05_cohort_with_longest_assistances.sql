SELECT AVG(completed_at - started_at) as average_assistance_time, 
cohorts.name as name
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
group by cohorts.name
order by average_assistance_time desc
limit 1 ;