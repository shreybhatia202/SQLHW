CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR(30)
);

CREATE TABLE dept_emp (
    emp_no INT,
	dept_no VARCHAR(10),
    from_date DATE,
    to_date DATE
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(10),
    emp_no INT,
    from_date DATE,
    to_date DATE
);

CREATE TABLE employees (
	emp_no INT,
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR,
	hire_date DATE
);

CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE
);

CREATE TABLE title (
	emp_no INT,
	title VARCHAR(50),
	from_date DATE,
	to_date DATE
);