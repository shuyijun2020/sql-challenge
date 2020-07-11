select * from departments;
select * from dept_emp;
select * from dept_managers;
select * from employees;
select * from salaries;
select * from titles;

--1. List for each employee: employee number, last name, first name, sex, and salary
select employees.emp_no, last_name, first_name, sex, salaries.salaries from employees
join salaries on employees.emp_no=salaries.emp_no; 

--2. List first name, last name, and hire date for employees who were hired in 1986
select last_name, first_name, hire_date from employees
where hire_date between '1986-01-01' and '1986-12-31';

--3. Manager information: department number, department name, the manager's employee number, last name, first name
select departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name from employees
join dept_managers on employees.emp_no=dept_managers.emp_no
join departments on departments.dept_no=dept_managers.dept_no; 

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees
join dept_emp on employees.emp_no=dept_emp.emp_no
join departments on departments.dept_no=dept_emp.dept_no; 

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select last_name, first_name, sex from employees
where first_name='Hercules' and last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees
join dept_emp on employees.emp_no=dept_emp.emp_no
join departments on departments.dept_no=dept_emp.dept_no
where dept_name='Sales';

--7.List all employees in the Sales and Development departments, employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees
join dept_emp on employees.emp_no=dept_emp.emp_no
join departments on departments.dept_no=dept_emp.dept_no
where dept_name='Sales' or dept_name='Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) from employees
group by last_name
order by count(last_name) desc;















