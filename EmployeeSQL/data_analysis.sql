-- DATA ANALYSIS --

-- REQUIREMENT 1 --

SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employees as e
JOIN salaries as s ON s.emp_no = e.emp_no;

-- REQUIREMENT 2 --

SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date LIKE '%1986';

-- REQUIREMENT 3 --

SELECT dm.dept_no,d.dept_name,e.emp_no,e.last_name,e.first_name
FROM department_manager as dm
JOIN departments as d
ON d.dept_no = dm.dept_no
JOIN employees as e
ON e.emp_no = dm.emp_no;

-- REQUIREMENT 4 --

SELECT de.dept_no,de.emp_no,e.last_name,e.first_name,d.dept_name
FROM department_employee as de
JOIN employees as e on e.emp_no = de.emp_no
JOIN departments as d on d.dept_no = de.dept_no;

-- REQUIREMENT 5 --

SELECT first_name,last_name,sex
FROM employees 
WHERE first_name LIKE '%Hercules' AND last_name LIKE 'B%';

-- REQUIREMENT 6 --

SELECT de.emp_no,e.last_name,e.first_name
FROM department_employee as de
JOIN employees as e on e.emp_no = de.emp_no
JOIN departments as d on d.dept_no = de.dept_no
WHERE d.dept_name LIKE 'Sales%';

-- REQUIREMENT 7 --

SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees as e
JOIN department_employee as de on de.emp_no = e.emp_no
JOIN departments as d on d.dept_no = de.dept_no
WHERE d.dept_name LIKE 'S%' OR d.dept_name LIKE 'D%';

-- REQUIREMENT 8 --

SELECT last_name, COUNT(last_name)AS Frequency
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;



