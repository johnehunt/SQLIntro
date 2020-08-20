-- SQL IN SELECT subquery
SELECT * FROM modules 
         WHERE id 
         IN (SELECT module_id FROM subject_details);

SELECT NOT IN subquery
SELECT * FROM modules 
         WHERE id 
         NOT IN (SELECT module_id FROM subject_details);

-- Using ANY with a subquery
SELECT name 
       FROM modules 
       WHERE id = ANY(SELECT module_id 
                             FROM subject_details 
                             WHERE numbers > 9);

-- Using the Exists operator
SELECT * FROM modules 
  WHERE EXISTS 
    (SELECT name FROM subject_details 
                 WHERE modules.id = subject_details.module_id)
  ORDER BY id;

