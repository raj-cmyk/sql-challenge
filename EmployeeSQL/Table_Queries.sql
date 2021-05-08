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
--Part 1
SELECT 
dm.dept_no,
dm.emp_no,
d.dept_name
INTO departments_config 
FROM dept_manager dm
INNER JOIN departments d ON
dm.dept_no = d.dept_no;

SELECT * FROM departments_config 


-- Part 2 Qtn3 answer
SELECT 
e.first_name,
e.last_name,
dc.dept_no,
dc.dept_name,
dc.emp_no
FROM employees e
RIGHT JOIN departments_config dc ON
e.emp_no = dc.emp_no;

--Q4List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
	e.first_name,
	e.last_name,
	de.emp_no,
	d.dept_name
into employee_clean_Qtn4
from dept_emp de
inner join employees e on e.emp_no = de.emp_no
inner join departments d on d.dept_no = de.dept_no;

SELECT * FROM employee_clean_Qtn4

--Q5List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT
e.first_name,
e.last_name,
e.sex
FROM employees e
WHERE e.first_name = 'Hercules'
	AND e.last_name LIKE 'B%';

--Q6List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT *
FROM employee_clean_Qtn4
WHERE dept_name = 'Sales';


--Qtn7List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT *
FROM employee_clean_Qtn4
WHERE dept_name = 'Sales'OR dept_name = 'Development';





