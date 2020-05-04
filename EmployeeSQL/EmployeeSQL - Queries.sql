--SELECT emp_no, last_name, first_name, sex FROM employees
--SELECT * FROM salaries;

-- List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
JOIN employees ON
employees.emp_no=salaries.emp_no;

-- List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
JOIN employees ON
employees.emp_no=salaries.emp_no;

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, 
employees.last_name, employees.first_name
FROM departments, employees
JOIN dept_manager ON
dept_manager.emp_no=employees.emp_no;