-- Step 0: Create and use database
CREATE DATABASE IF NOT EXISTS SchoolDB;
USE SchoolDB;

-- Step 1: Create parent table 'Classes'
CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50)
);

-- Step 2: Insert data into Classes
INSERT INTO Classes (class_id, class_name) VALUES
(201, '12th A'),
(202, '12th B');

-- Step 3: Create child table 'Students' with foreign key constraints
DROP TABLE IF EXISTS Students;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    class_id INT,
    FOREIGN KEY (class_id)
        REFERENCES Classes(class_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Step 4: Insert valid data into Students
INSERT INTO Students (student_id, name, class_id) VALUES
(1, 'Raju', 201),
(2, 'Meena', 202);

-- Step 5: Test ON UPDATE CASCADE
UPDATE Classes
SET class_id = 211
WHERE class_id = 201;

-- Step 6: Test ON DELETE CASCADE
DELETE FROM Classes WHERE class_id = 202;

-- Step 7: Final SELECT to verify cascading actions
SELECT * FROM Classes;
SELECT * FROM Students;
