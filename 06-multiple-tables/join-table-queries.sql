-- Inner join between student_details and modules
SELECT subject_details.subject, modules.id, modules.name
FROM
subject_details INNER JOIN modules 
ON subject_details.module_id = modules.id;

-- Left Outer Join example
SELECT subject_details.subject, modules.id, modules.name
FROM
subject_details LEFT JOIN modules 
ON subject_details.module_id = 
   modules.id;

-- Right Outer Join
SELECT subject_details.subject, modules.id, modules.name
FROM
subject_details RIGHT JOIN modules 
ON subject_details.module_id = modules.id;

-- Full Outer Join
SELECT subject_details.subject, modules.id, modules.name
FROM
subject_details FULL OUTER JOIN modules 
ON subject_details.module_id = modules.id;

