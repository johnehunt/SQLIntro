-- Inner join between student_details and modules
SELECT subject_details.subject, modules.id, modules.name
FROM subject_details 
     INNER JOIN modules 
         ON subject_details.module_id = modules.id;


SELECT * from subject_details;

-- Left Outer Join example
SELECT subject_details.subject, subject_details.module_id, modules.name
FROM subject_details 
     LEFT JOIN modules 
         ON subject_details.module_id = modules.id;

-- Right Outer Join
SELECT subject_details.subject, modules.id, modules.name
FROM subject_details 
     RIGHT JOIN modules 
         ON subject_details.module_id = modules.id;

-- Full Outer Join
SELECT subject_details.subject, modules.id, modules.name
FROM subject_details 
    FULL JOIN modules 
        ON subject_details.module_id = modules.id;

-- Cross Join
SELECT subject_details.subject, modules.id, modules.name
    FROM subject_details CROSS JOIN modules
    WHERE modules.id = 3;