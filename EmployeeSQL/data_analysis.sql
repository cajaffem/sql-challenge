SELECT employees.emp_no, employees.last_name, employees.first_name, gender, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT first_name, last_name, hire_date from employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date ASC;

SELECT ma.dept_no, d.dept_name, ma.emp_no, e.first_name, e.last_name, ma.from_date, ma.to_date
FROM dept_manager AS ma
INNER JOIN department AS d
ON ma.dept_no = d.dept_no
INNER JOIN employees AS e
ON ma.emp_no = e.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN department as d
ON de.dept_no = d.dept_no;

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN department as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN department as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

SELECT COUNT(last_name) AS frequency, last_name
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
