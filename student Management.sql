CREATE DATABASE student_management;

USE student_management;

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(100)
);
INSERT INTO student
(student_id, name, age, department, phone, email)
VALUES
(1, 'Nivetha', 21, 'CSE', '9876543210', 'nivetha@gmail.com'),
(2, 'Priya', 20, 'ECE', '9876543211', 'priya@gmail.com'),
(3, 'Anu', 21, 'CSE', '9876543212', 'anu@gmail.com'),
(4, 'Divya', 20, 'IT', '9876543213', 'divya@gmail.com'),
(5, 'Meena', 22, 'CSE', '9876543214', 'meena@gmail.com');
SELECT * FROM student;

SELECT name, department
FROM student;

SELECT *
FROM student
WHERE department = 'CSE';
SELECT *
FROM student
WHERE age > 20;
UPDATE student
SET department = 'CSE'
WHERE student_id = 2;

DELETE FROM student
WHERE student_id = 5;

SELECT *
FROM student
ORDER BY name ASC;
SELECT *
FROM student
ORDER BY age DESC;

SELECT COUNT(*) AS total_students
FROM student;
SELECT MIN(age) AS youngest_age
FROM student;
SELECT MAX(age) AS oldest_age
FROM student;
ALTER TABLE student
ADD city VARCHAR(50);
UPDATE student
SET city = 'Virudhunagar'
WHERE student_id = 1;
SELECT *
FROM student
WHERE city = 'Virudhunagar';