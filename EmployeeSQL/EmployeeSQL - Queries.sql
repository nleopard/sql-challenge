--SELECT emp_no, last_name, first_name, sex FROM employees
--SELECT * FROM salaries;

-- List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
JOIN employees ON
employees.emp_no=salaries.emp_no;