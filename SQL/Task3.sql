USE data;

CREATE TABLE Departments (
			dept_id INT PRIMARY KEY AUTO_INCREMENT,
            dept_name VARCHAR(50) NOT NULL
);
desc Departments;

CREATE TABLE Employees(
		emp_id INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        age INT CHECK(age > 18),
        gender VARCHAR(20) NOT NULL,
        dept_id INT,
        salary INT NOT NULL,
        FOREIGN KEY(dept_id) REFERENCES Departments(dept_id)
);

DESC Employees;

INSERT INTO Departments values(101,'HR');
INSERT INTO Departments values(102,'IT');
INSERT INTO Departments values(103,'Finance');
INSERT INTO Departments values(104,'Sales');
INSERT INTO Departments values(105,'Marketing');

SELECT * FROM Departments;

INSERT INTO Employees (emp_id, name, age, gender, dept_id, salary) VALUES
(1, 'Amit Kadam', 28, 'M', 101, 52000),
(2, 'Priya Patil', 26, 'F', 102, 60000),
(3, 'Rohan Desai', 32, 'M', 103, 75000),
(4, 'Neha Mulik', 27, 'F', 104, 48000),
(5, 'Ankit Kumbhar', 30, 'M', 105, 55000),
(6, 'Sneha Chavan', 29, 'F', 102, 62000),
(7, 'Vikram Das', 35, 'M', 101, 70000),
(8, 'Meera Kale', 24, 'F', 103, 50000),
(9, 'Arjun Joshi', 31, 'M', 105, 53000),
(10, 'Kavya Mane', 28, 'F', 104, 57000),
(11, 'Ritesh Narule', 33, 'M', 102, 68000),
(12, 'Pooja Pawar', 26, 'F', 101, 49000),
(13, 'Manoj Pawar', 38, 'M', 104, 72000),
(14, 'Divya Shitole', 27, 'F', 105, 54000),
(15, 'Siddharth Jain', 29, 'M', 103, 65000),
(16, 'Ishita Sen', 25, 'F', 102, 61000),
(17, 'Rajeev Nair', 34, 'M', 101, 59000),
(18, 'Anjali Kadam', 30, 'F', 104, 56000),
(19, 'Karan Yadav', 36, 'M', 103, 78000),
(20, 'Radhika Chavan', 28, 'F', 105, 58000);

SELECT * FROM Employees;

SELECT name,salary FROM Employees;

SELECT * FROM Departments;

SELECT name, age FROM Employees WHERE age > 30;

SELECT * FROM Employees WHERE gender='F';

SELECT * FROM Employees WHERE dept_id='102';

SELECT * FROM Employees WHERE gender='M' AND salary > 60000;

SELECT * FROM Employees WHERE age > 30 OR salary < 50000;

SELECT * FROM Employees WHERE dept_id!=101;
#OR
SELECT * FROM Employees WHERE dept_id NOT IN (101);

SELECT * FROM Employees WHERE age BETWEEN 25 AND 35;

SELECT * FROM Employees WHERE name LIKE 'A%';

SELECT * FROM Employees WHERE name LIKE '%a%';

SELECT * FROM Employees ORDER BY salary ASC;

SELECT * FROM Employees ORDER BY salary DESC LIMIT 3;

SELECT e.name, d.dept_name
FROM Employees e
JOIN departments d ON e.dept_id = d.dept_id;

SELECT e.name, d.dept_name 
FROM Employees e 
JOIN Departments d ON e.dept_id = d.dept_id
WHERE d.dept_name='Finance';

SELECT e.emp_id,e.name, d.dept_name, e.salary
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
WHERE e.salary > 50000;
