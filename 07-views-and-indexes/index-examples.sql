-- Add an index to the students table
CREATE UNIQUE INDEX email_UNIQUE ON students (email ASC);

-- Check status of table
CHECK TABLE students FOR UPGRADE;

