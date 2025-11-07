-- GPA Tracker 
-- Sohib Charkaoui
-- Description: Lets any user enter multiple courses, credits, and grades,
--              then view all courses and calculate total GPA.

-- Create or select the database
CREATE DATABASE IF NOT EXISTS gpa_tracker;
USE gpa_tracker;

-- Drop and recreate the courses table
DROP TABLE IF EXISTS courses;

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT,
    grade VARCHAR(3)
);

-- Insert multiple courses at once
-- (USERS PLEASE EDIT ONLY THIS SECTION TO GET GPA) 
INSERT INTO courses (course_name, credits, grade)
VALUES
('IT 244', 3, 'A'),
('ECON 101', 4, 'B+'),
('MATH 130', 3, 'A-'),
('MUSIC 115', 3, 'B');

-- View all entered courses
SELECT * FROM courses;

-- 5Calculate total GPA for all courses
SELECT 
    ROUND(SUM(
        CASE grade
            WHEN 'A'  THEN 4.0
            WHEN 'A-' THEN 3.7
            WHEN 'B+' THEN 3.3
            WHEN 'B'  THEN 3.0
            WHEN 'B-' THEN 2.7
            WHEN 'C+' THEN 2.3
            WHEN 'C'  THEN 2.0
            WHEN 'C-' THEN 1.7
            WHEN 'D+' THEN 1.3
            WHEN 'D'  THEN 1.0
            ELSE 0
        END * credits
    ) / SUM(credits), 2) AS GPA
FROM courses;

-- Optional: GPA Reset 
--  Only use this if you want to start fresh.
-- It deletes all records but keeps the table structure.
-- TRUNCATE TABLE courses;
-- SELECT * FROM courses;
