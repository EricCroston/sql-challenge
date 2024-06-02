SELECT 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;

SELECT 
	first_name,
	last_name,
	hire_date
FROM employees
WHERE
	EXTRACT(YEAR FROM hire_date) = 1986;

SELECT 
	employees.last_name,
	employees.first_name,
	dept_manager.dept_no,
	departments.dept_name,
	employees.emp_no
FROM employees
INNER JOIN dept_manager ON
dept_manager.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_manager.dept_no;

SELECT 
	dept_emp.dept_no,
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no;

SELECT 
	first_name,
	last_name,
	sex
FROM employees
WHERE
	first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT 
	employees.emp_no,
	employees.last_name,
	employees.first_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no
WHERE
	dept_name = 'Sales';

SELECT 
	dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no
WHERE
	dept_name = 'Sales' OR dept_name = 'Development';

SELECT last_name, COUNT(*) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;