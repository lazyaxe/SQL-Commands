--Comment
/*
	Multiline comment.
*/
/*
	C.R.U.D OPERATIONS IN PostgreSQL:
	C: Create
	R: Read
	U: Update
	D: Delete
*/
--1. Creating a Database.
CREATE DATABASE College;

--2. Creating a Table in the Database
CREATE TABLE students_details
(
	ID INT,
	name CHAR(100),
	age INT,
	grade VARCHAR(2)
);

--2.Inserting value(s) in a table.
/*
	~> Because SQL used ACID where A=Atomicity, every record in each INSERT command must follow the TABLE's constraints(conditions).
	~> If any one record's value does not follows the constraint then the whole INSERT command will be rejected.
*/
--Use only single inverted quotes for string.
INSERT INTO students_details(name, age, grade)
VALUES ('Joe', 23, 'A+'),
	   ('Candice', 26, 'C-');

INSERT INTO students_details(ID, name, age, grade)
VALUES (416323245, 'Allan', 27, 'A+');

--To Read/Print the table:
SELECT * 
FROM students_details;
-- * means: every row/record in the table.

--To only read particular column(s):
SELECT name FROM students_details;

--Applying constraints
/*
	Constraints are like the if condition queries ...
	They are very similar to mask filter/conditions in Pandas...
*/

SELECT * 
FROM students_details 
WHERE grade = 'C-'
	--Explaination: show every row where the attribute Grade is A+... 

--Updating Values
UPDATE students_details
SET grade='B+'
WHERE Name = 'Candice';

SELECT *
FROM students_details;

UPDATE students_details
SET name='Francis'
WHERE grade='C-';

UPDATE students_details
SET ID=416323243
WHERE  name='Francis';

SELECT *
FROM students_details;

--Delete:
DELETE FROM students_details
WHERE name ='Joe';

SELECT *
FROM students_details;


SELECT column_name, data_type, is_nullable, column_default
FROM information_schema.columns
WHERE table_name = 'students_details';



