CREATE DATABASE ORG;
USE ORG;

CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
FIRST_NAME CHAR (50),
LAST_NAME CHAR (50),
SALARY FLOAT (15),
JOINING_DATE DATE,
DEPARTMENT CHAR (25)
);

INSERT INTO Worker
(FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
	('Sushmitha','S', 100000, '2009-02-14', 'HR'),
	('Meghana', 'Kamath', 80000, '2009-06-14', 'Admin'),
	('Vrishab', 'CJ', 300000, '2009-02-16', 'HR'),
	('Pavan', 'Puranik', 500000, '2009-02-14', 'Admin'),
	('Devashish', 'Murthy', 500000, '2009-06-19', 'Account'),
	('Bhavesh', 'Sharma', 200000, '2009-06-12', 'Account'),
	('Shreya', 'Rao', 75000, '2009-01-14', 'HR'),
	('Karthik', 'Prabhu', 90000,'2009-04-14', 'Admin');

SELECT FIRST_NAME FROM Worker; 
SELECT Upper(FIRST_NAME) AS WORKER_NAME FROM Worker;
SELECT DISTINCT DEPARTMENT FROM Worker;
SELECT SUBSTRING(FIRST_NAME, 1, 3) FROM Worker;
SELECT DISTINCT LEN (DEPARTMENT) FROM Worker;
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME FROM Worker;
SELECT * FROM Worker WHERE FIRST_NAME IN ('Vrishab', 'Sushmitha');
SELECT * FROM Worker WHERE DEPARTMENT LIKE 'Admin%';
SELECT * FROM Worker WHERE FIRST_NAME LIKE 'a%';
SELECT * FROM Worker WHERE FIRST_NAME LIKE '%a%';