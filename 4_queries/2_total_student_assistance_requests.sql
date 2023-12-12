SELECT students.name, count(assistance_requests.*) as total_assistances
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;
