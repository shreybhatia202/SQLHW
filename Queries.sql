
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date 
FROM departments as d
INNER JOIN dept_manager as dm 
ON d.dept_no = dm.dept_no
INNER JOIN employees as e 
ON dm.emp_no = e.emp_no;


SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM departments as d
INNER JOIN dept_manager as dm 
ON d.dept_no = dm.dept_no
INNER JOIN employees as e 
ON dm.emp_no = e.emp_no;

SELECT * 
FROM employees
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%'


SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM departments as d
INNER JOIN dept_emp as de 
ON d.dept_no = de.dept_no
INNER JOIN employees as e 
ON de.emp_no = e.emp_no
WHERE d.dept_name LIKE 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM departments as d
INNER JOIN dept_emp as de 
ON d.dept_no = de.dept_no
INNER JOIN employees as e 
ON de.emp_no = e.emp_no
WHERE d.dept_name LIKE 'Sales' 
OR d.dept_name LIKE 'Development';


SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;