-- create a database
CREATE DATABASE univeristy; 

-- Set as default database to use
USE university;

-- Create table students (should already exist)
CREATE TABLE students (
  id int(11),
  name varchar(255),
  surname varchar(255),
  subject varchar(45),
  email varchar(45));

-- Adding a column to an existing table
ALTER TABLE students 
ADD COLUMN debt DECIMAL(2) NULL;

-- Delete (DROP) a table
DROP TABLE table_name; statement

-- Obtain table meta data
DESCRIBE table_name;

-- Get a list of tables
show tables;

-- Adding contraints to the tabel creation
CREATE TABLE students (
  id int(11) NOT NULL,
  name varchar(45) NOT NULL,
  surname varchar(45) NOT NULL,
  subject varchar(45) NOT NULL,
  email varchar(45) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY email_UNIQUE (email)
);

