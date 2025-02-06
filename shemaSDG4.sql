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
('Garissa', 'Rural', 'Low');

INSERT INTO school(school_name, region_id, school_type, infrustructure_quality)
VALUES
('Nairobbi High School', 1, 'Private', 'Good'),
('Kisumu Secondary School', 2,  'Public', 'Average'),
('Turkana Secondary School', 3, 'Public', 'Poor'),
('Garissa Secondary School', 4, 'Public', 'Poor');

INSERT INTO teacher(teacher_name, qualification, department, school_id, region_id)
VALUES
('John Doe', 'B.Ed Mathematics', 'math', 1, 1),
('Jane Smith', 'M.Ed Sceince', 'Sccience', 3, 2),
('Mary Johnson', 'B.Ed English', 'Lingustic', 4, 4),
('James Wilson', 'B.Ed History', 'Humanity', 3, 3);

INSERT INTO student(student_name, age, enrollment_status, shoool_id, dropout_status,region_id)
VALUES
('Michael Jordan', 16, 'enrolled', 1, 'Not Dropped', 1),
('Sara Lee', 15, 'enrolled', 2, 'Not Dropped', 2),
('Luke Brown', 17, 'not enrolled', 3, 'Dropped', 3),
('Emma White', 14, 'not enrolled', 4, 'Dropped', 4);

INSERT INTO leader(leader_name, position, region_id, leadership_score)
VALUES
('Alice Green', 'Education Advocate', 1, 8),
('Bob Taylor', 'Education Officer', 2, 7),
('Charlie King', 'school principal', 3, 5),
('David Scott', 'Engineer', 4, 6);


SELECT * FROM region;

