--The constraints are the custion made conditions which a inputted record must meet:
	/*		
	  Types of constraints:
		1. Domain Integrity Constraints:
			~> Domain constraints allow us to test whether the values inserted into
			the database are correct or not.
		2. Entity Integrity Constraint:
			~> Entity constraint are used to test the value inserted into the database
			are correct or not with respect to other tuples in same table.
			CREATE TABLE User_Account_Details
	*/
CREATE TABLE User_Account_Details
(
	--Showcasing of constraints: 
	ID SERIAL PRIMARY KEY,-- Entity Constraint
	name VARCHAR(100) NOT NULL,--Domain Constraint
	email_ID TEXT UNIQUE,-- Entity Constraint
	account_created_at DATE DEFAULT NOW(),--Domain Constraint, By this the default date will the day this DDL Command was executed
	age SMALLINT CHECK(Age > 18),--Domain Constraint
	phone NUMERIC(10, 0) NOT NULL
);

--
INSERT INTO User_Account_Details (name, email_ID, age, phone)
VALUES
	('Aarav Mehta', 'aarav.mehta@example.com', 19, 9876543210),
	('Sanya Kapoor', 'sanya.kapoor@example.com',  29, 9123456780),
	('Rohan Iyer', 'rohan.iyer@example.com',  32, 9812345678),
	('Priya Sharma', 'priya.sharma@example.com',  27, 9988776655),
	('Kabir Malhotra', 'kabir.malhotra@example.com', 35, 9001122334),
	('Tanya Singh', 'tanya.singh@example.com', 28, 9456123789);

SELECT * 
FROM User_Account_Details;


SELECT column_name, data_type, is_nullable, column_default
FROM information_schema.columns
WHERE table_name = 'user_account_details';

SELECT column_name, data_type, is_nullable, column_default
FROM information_schema.columns
WHERE column_name = 'id' or column_name='age';
