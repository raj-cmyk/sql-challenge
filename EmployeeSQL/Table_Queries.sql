--Q1List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees e
INNER JOIN salaries s ON
e.emp_no = s.emp_no;

--Q2List first name, last name, and hire date for employees who were hired in 1986.
SELECT
	e.last_name,
	e.first_name,
	e.hire_date
FROM employees e
WHERE e.hire_date >= '1986-01-01' AND e.hire_date <= '1986-12-31';


3. --Q3List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT 
dm.dept_no,
dm.emp_no,
d.dept_name
INTO departments_config 
FROM dept_manager dm
INNER JOIN departments d ON
dm.dept_no = d.dept_no;

SELECT 
e.first_name,
e.last_name,
dc.dept_no,
dc.dept_name,
dc.emp_no
FROM employees e
RIGHT JOIN departments_config dc ON
e.emp_no = dc.emp_no;









SELECT * FROM departments_config








SELECT * FROM employees