-- SQL Data Analysis Internship - Task 1
-- Author: Rishi Pandey

CREATE DATABASE StudentDB;

USE StudentDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Department VARCHAR(50),
    Marks INT
);

INSERT INTO Students VALUES
(1,'Rohan',20,'Male','CSE',85),
(2,'Priya',21,'Female','ECE',92),
(3,'Amit',19,'Male','CSE',78),
(4,'Sneha',20,'Female','ME',88),
(5,'Rahul',22,'Male','ECE',95),
(6,'Anjali',21,'Female','CSE',81);
(7,'Rishi',20,'Mail','CSE',90);
(8,'Arpit',21,'Mail','ECE',89);
(9,'Om',20,'Mail','CSE',80);
(10,'Rishika',20,'Femail','CSE',90);

-- Display all students
SELECT * FROM Students;

-- Average Marks
SELECT AVG(Marks) AS Average_Marks
FROM Students;

-- Highest Marks
SELECT *
FROM Students
ORDER BY Marks DESC
LIMIT 1;

-- Department Wise Average
SELECT Department,
AVG(Marks) AS Avg_Marks
FROM Students
GROUP BY Department;

-- Students with Marks Greater than 80
SELECT *
FROM Students
WHERE Marks > 80;

-- Total Students
SELECT COUNT(*) AS Total_Students
FROM Students;