SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;

Select first_name, last_name, hire_date
From employees
Where hire_date BETWEEN '1986-01-01' AND '1987-01-01';

SELECT dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM employees
INNER JOIN dept_manager ON employees.emp_no=dept_manager.emp_no;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name, dept_emp.dept_no
FROM employees
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no;
 
SELECT employees.emp_no, employees.last_name, employees.first_name
FROM employees
Where first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no
FROM employees
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
WHERE dept_no = 'd007';

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name, dept_emp.dept_no
FROM employees
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'; 

SELECT last_name, COUNT(*)
FROM employees 
GROUP BY last_name
ORDER BY last_name DESC;






