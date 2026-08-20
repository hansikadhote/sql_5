Create Database College_demo;
Use College_demo;
Create Table department (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50) UNIQUE NOT NULL
);
Create Table student (
roll_no INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
aadhar_no VARCHAR(12) UNIQUE,
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department (dept_id)
);
Create Table Course (
course_id INT PRIMARY KEY,
course_name VARCHAR(50) NOT NULL,
dept_id INT,
Foreign key (dept_id) References department(dept_id)
);
Create Table enrollment (
roll_no INT,
course_id INT,
semester INT CHECK (semester BETWEEN 1 AND 8),
grade CHAR(2),
PRIMARY KEY (roll_no, course_id, semester),
Foreign Key (roll_no) References student(roll_no),
Foreign Key (course_id) References course(course_id)
);
desc student;