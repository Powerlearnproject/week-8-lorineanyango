USE CRL;

CREATE DATABASE CRL;

CREATE TABLE region(
region_id INT PRIMARY KEY AUTO_INCREMENT,
region_name VARCHAR(200) NOT NULL,
region_type VARCHAR(200) NOT NULL,
income_level DECIMAL(2,2) NOT NULL
);

ALTER TABLE region MODIFY COLUMN income_level VARCHAR(150);

CREATE TABLE school(
school_id INT PRIMARY KEY AUTO_INCREMENT,
school_name VARCHAR(150) NOT NULL,
region_id INT,
school_type VARCHAR(150) NOT NULL,
infrustructure_quality VARCHAR(50),
FOREIGN KEY (region_id) REFERENCES region(region_id)
);

CREATE TABLE teacher(
teacher_id INT PRIMARY KEY AUTO_INCREMENT,
teacher_name VARCHAR(150) NOT NULL,
qualification VARCHAR(100),
department VARCHAR(150),
school_id INT,
region_id INT,
FOREIGN KEY (region_id) REFERENCES region(region_id),
FOREIGN KEY (school_id) REFERENCES school(school_id)

);


CREATE TABLE student(
student_id INT PRIMARY KEY AUTO_INCREMENT,
student_name VARCHAR(150) NOT NULL,
age INT NOT NULL,
enrollment_status VARCHAR(150) NOT NULL,
school_id INT,
dropout_status VARCHAR(150),
region_id INT,
FOREIGN KEY (region_id) REFERENCES region(region_id),
FOREIGN KEY (school_id) REFERENCES school(school_id)

);

CREATE TABLE leader(
leader_id INT PRIMARY KEY AUTO_INCREMENT,
leader_name VARCHAR(150) NOT NULL,
position VARCHAR(100) NOT NULL,
region_id INT,
leadership_score INT NOT NULL,
FOREIGN KEY (region_id) REFERENCES region(region_id)
);

INSERT INTO region(region_name, region_type, income_level)
VALUES 
('Nairobi', 'Urban', 'High'),
('Kisumu', 'Urban', 'High'),
('Turkana', 'Rural', 'Low'),
('Garissa', 'Rural', 'Low'),
('Mombasa', 'Urban', 'High'),
('Meru', 'Urban', 'Medium'),
('Migori', 'Rural', 'Low'),
('Marsabit', 'Rural', 'Low'),
('Nakuru', 'Urban', 'Medium'),
('Nyeri', 'Urban', 'High'),
('Bungoma', 'Rural', 'Medium'),
('Kitui', 'Rural', 'Low'),
('Machakos', 'Urban', 'Medium'),
('Kajiado', 'Rural', 'Medium'),
('Kericho', 'Rural', 'Medium'),
('Eldoret', 'Urban', 'High'),
('Kilifi', 'Rural', 'Low'),
('Embu', 'Urban', 'Medium'),
('Homabay', 'Rural', 'Low'),
('Narok', 'Rural', 'Medium');


INSERT INTO school(school_name, region_id, school_type, infrustructure_quality)
VALUES
('Nairobi High School', 1, 'Private', 'Good'),
('Kisumu Secondary', 2, 'Public', 'Average'),
('Turkana Sec School', 3, 'Public', 'Poor'),
('Garissa Secondary', 4, 'Public', 'Poor'),
('Mombasa Academy', 5, 'Private', 'Excellent'),
('Meru High', 6, 'Public', 'Good'),
('Migori Girls', 7, 'Public', 'Average'),
('Marsabit Boys', 8, 'Public', 'Poor'),
('Nakuru Day School', 9, 'Public', 'Good'),
('Nyeri Elite Academy', 10, 'Private', 'Excellent'),
('Bungoma School', 11, 'Public', 'Average'),
('Kitui Mixed', 12, 'Public', 'Poor'),
('Machakos Academy', 13, 'Private', 'Good'),
('Kajiado Christian', 14, 'Private', 'Average'),
('Kericho School', 15, 'Public', 'Good'),
('Eldoret Elite', 16, 'Private', 'Excellent'),
('Kilifi Mixed', 17, 'Public', 'Poor'),
('Embu Academy', 18, 'Private', 'Good'),
('Homabay High', 19, 'Public', 'Average'),
('Narok Academy', 20, 'Private', 'Excellent');


INSERT INTO teacher(teacher_name, qualification, department, school_id, region_id)
VALUES
('John Doe', 'B.Ed Mathematics', 'Mathematics', 1, 1),
('Jane Smith', 'M.Ed Science', 'Science', 2, 2),
('Mary Johnson', 'B.Ed English', 'Linguistics', 3, 3),
('James Wilson', 'B.Ed History', 'Humanities', 4, 4),
('Paul Adams', 'B.Ed Physics', 'Science', 5, 5),
('Nancy White', 'M.Ed Geography', 'Humanities', 6, 6),
('Robert Black', 'B.Ed Chemistry', 'Science', 7, 7),
('Emma Watson', 'B.Ed Biology', 'Science', 8, 8),
('Lucas Brown', 'B.Ed Literature', 'Linguistics', 9, 9),
('Sophia Green', 'M.Ed Music', 'Arts', 10, 10),
('Michael Scott', 'B.Ed Sports', 'Physical Education', 11, 11),
('Hannah Lee', 'M.Ed ICT', 'Technology', 12, 12),
('Kevin Hart', 'B.Ed Economics', 'Commerce', 13, 13),
('Alice Kim', 'B.Ed Drama', 'Arts', 14, 14),
('Brian Taylor', 'M.Ed Sociology', 'Social Studies', 15, 15),
('Christine Moore', 'B.Ed Special Needs', 'Special Education', 16, 16),
('Samuel King', 'M.Ed Agriculture', 'Agriculture', 17, 17),
('Olivia White', 'B.Ed French', 'Languages', 18, 18),
('David Johnson', 'M.Ed Home Science', 'Home Science', 19, 19),
('Caroline Smith', 'B.Ed Business', 'Commerce', 20, 20);


INSERT INTO student(student_name, age, enrollment_status, school_id, dropout_status, region_id)
VALUES
('Michael Jordan', 16, 'Enrolled', 1, 'Not Dropped', 1),
('Sara Lee', 15, 'Enrolled', 2, 'Not Dropped', 2),
('Luke Brown', 17, 'Not Enrolled', 3, 'Dropped', 3),
('Emma White', 14, 'Not Enrolled', 4, 'Dropped', 4),
('Kevin Hart', 18, 'Enrolled', 5, 'Not Dropped', 5),
('Nancy Drew', 17, 'Enrolled', 6, 'Not Dropped', 6),
('Jason Clark', 16, 'Not Enrolled', 7, 'Dropped', 7),
('Angela Rose', 15, 'Enrolled', 8, 'Not Dropped', 8),
('Lucas Green', 14, 'Not Enrolled', 9, 'Dropped', 9),
('Sophia Blue', 16, 'Enrolled', 10, 'Not Dropped', 10),
('Brian Moore', 17, 'Enrolled', 11, 'Not Dropped', 11),
('Catherine Adams', 16, 'Not Enrolled', 12, 'Dropped', 12),
('Daniel Thomas', 15, 'Enrolled', 13, 'Not Dropped', 13),
('Emma Watson', 14, 'Enrolled', 14, 'Not Dropped', 14),
('Robert Green', 17, 'Not Enrolled', 15, 'Dropped', 15),
('Olivia Scott', 16, 'Enrolled', 16, 'Not Dropped', 16),
('David Lee', 18, 'Not Enrolled', 17, 'Dropped', 17),
('Jessica Brown', 15, 'Enrolled', 18, 'Not Dropped', 18),
('Samuel White', 17, 'Not Enrolled', 19, 'Dropped', 19),
('Caroline Kim', 16, 'Enrolled', 20, 'Not Dropped', 20);

INSERT INTO leader(leader_name, position, region_id, leadership_score)
VALUES
('Alice Green', 'Education Advocate', 1, 8),
('Bob Taylor', 'Education Officer', 2, 7),
('Charlie King', 'School Principal', 3, 5),
('David Scott', 'Engineer', 4, 6),
('Emma Watson', 'Education Director', 5, 9),
('Nancy Adams', 'Head of Education', 6, 8),
('Jason Moore', 'Local Council Leader', 7, 4),
('Lucas Brown', 'Deputy Education Officer', 8, 5),
('Sophia Green', 'Regional Director', 9, 9),
('Kevin Clark', 'Education Secretary', 10, 7),
('Hannah Blue', 'Education Policy Maker', 11, 6),
('Brian Smith', 'Community Education Head', 12, 5),
('Olivia King', 'Youth Education Advocate', 13, 6),
('Robert Lee', 'Principal', 14, 8),
('Jessica White', 'Teacher Representative', 15, 7),
('Daniel Rose', 'Governor’s Education Advisor', 16, 9),
('Samuel Taylor', 'NGO Education Coordinator', 17, 6),
('Catherine Moore', 'Head of Curriculum', 18, 8),
('David Brown', 'National Education Officer', 19, 9),
('Caroline Scott', 'School Board Director', 20, 7);


-- Retrieve all schools and their regions 
SELECT school_name, school_type, infrustructure_quality, region_name, region_type
FROM school
JOIN region ON school.region_id = region.region_id;

-- Retrieve teachers and their respective schools and regions
SELECT student_name, age, enrollment_status, dropout_status, school_name, region_name
FROM student
JOIN school ON student.school_id = school.school_id
JOIN region ON student.region_id = region.region_id;

-- Retrieve leaders and their impact regions
SELECT leader_name, position, leadership_score, region_name
FROM leader
JOIN region ON leader.region_id = region.region_id;

-- Count the number of students enrolled vs. not enrolled
SELECT enrollment_status, COUNT(*) AS total_students
FROM student
GROUP BY enrollment_status;

-- Identify regions with the highest student dropouts
SELECT region_name, COUNT(*) AS dropout_count
FROM student
JOIN region ON student.region_id = region.region_id
WHERE dropout_status = 'Dropped'
GROUP BY region_name
ORDER BY dropout_count DESC;

-- Determine the average leadership score per region
SELECT region_name, AVG(leadership_score) AS avg_leadership_score
FROM leader
JOIN region ON leader.region_id = region.region_id
GROUP BY region_name;

-- Find schools with poor infrastructure quality
SELECT school_name, region_name, infrustructure_quality
FROM school
JOIN region ON school.region_id = region.region_id
WHERE infrustructure_quality = 'Poor';

-- Count teachers per region to check teacher availability
SELECT region_name, COUNT(*) AS total_teachers
FROM teacher
JOIN region ON teacher.region_id = region.region_id
GROUP BY region_name
ORDER BY total_teachers DESC;


ocate', 1, 8),
('Bob Taylor', 'Education Officer', 2, 7),
('Charlie King', 'school principal', 3, 5),
('David Scott', 'Engineer', 4, 6);



