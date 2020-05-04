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
FROM departments
JOIN dept_manager ON
departments.dept_no=dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;

--List the department of each employee with the following information:
--employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON
dept_emp.emp_no=employees.emp_no
JOIN departments ON
dept_emp.dept_no=departments.dept_no;

--List first name, last name, and sex for employees whose first name is 
--"Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON
dept_emp.emp_no=employees.emp_no
JOIN departments ON
dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON
dept_emp.emp_no=employees.emp_no
JOIN departments ON
dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS name_count FROM employees
GROUP BY last_name
ORDER BY name_count DESC;

