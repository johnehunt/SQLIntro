SELECT * FROM studies;

-- Multiple joins across the studies table
SELECT students.id AS student_id, students.name, students.surname, students.email, 
	   modules.id AS module_id, modules.name FROM students
INNER JOIN studies ON students.id = studies.student_id
INNER JOIN modules ON studies.module_id = modules.id;

-- Order the results
SELECT students.id AS student_id, students.name, students.surname, students.email, 
	   modules.id AS module_id, modules.name FROM students
INNER JOIN studies ON students.id = studies.student_id
INNER JOIN modules ON studies.module_id = modules.id
ORDER BY students.id;

-- Select only results for module 1
SELECT students.id AS student_id, students.name, students.surname, students.email, 
	   modules.id AS module_id, modules.name FROM students
INNER JOIN studies ON students.id = studies.student_id
INNER JOIN modules ON studies.module_id = modules.id
WHERE modules.id = 1
ORDER BY students.id;

-- Count number of students on each module
SELECT COUNT(students.id) AS students, modules.id AS module_id, modules.name FROM students
INNER JOIN studies ON students.id = studies.student_id
INNER JOIN modules ON studies.module_id = modules.id
GROUP BY modules.id
ORDER BY modules.id;
