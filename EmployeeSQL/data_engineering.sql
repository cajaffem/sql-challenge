CREATE TABLE department (
	dept_no VARCHAR(30),
	dept_name VARCHAR(30),
	PRIMARY KEY (dept_no)
);
 
CREATE TABLE employees (
           	emp_no INTEGER,
           	birth_date DATE,
           	first_name VARCHAR (30),
           	last_name VARCHAR (30),
           	gender VARCHAR (5),
	hire_date DATE,
	PRIMARY KEY (emp_no)
);
 
CREATE TABLE dept_emp (
	emp_no INTEGER,
	dept_no VARCHAR(30),
	from_date DATE,
           	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
           	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
 
CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
           	emp_no INTEGER,
	from_date DATE,
           	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
           	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
 
CREATE TABLE salaries (
           	emp_no INTEGER,
           	salary INTEGER,
           	from_date DATE,
           	to_date DATE,
           	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
 
CREATE TABLE titles (
           	emp_no INTEGER,
           	title VARCHAR (30),
           	from_date DATE,
           	to_date DATE,
           	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);