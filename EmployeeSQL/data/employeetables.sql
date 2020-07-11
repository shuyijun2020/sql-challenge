drop table departments;
drop table dept_emp;
drop table dept_managers;
drop table employees;
drop table salaries;
drop table titles;


--create dept table
create table departments(
	dept_no varchar(30),
	dept_name varchar(30)
);
select * from departments;

--create dept employee table
create table dept_emp(
	emp_no int not null,
	dept_no varchar(30),
	primary key (emp_no, dept_no)
);
select * from dept_emp;

--create dept managers table
create table dept_managers(
	dept_no varchar(30),
	manageremp_no int not null primary key
);
select * from dept_managers;

--create employees table
create table employees(
	emp_no int not null primary key,
	emp_title varchar(30),
	birth_date date,
	first_name varchar(60),
	last_name varchar(60),
	sex varchar (2),
	hire_date date
);
select * from employees;

--create salaries table
create table salaries(
	emp_no int not null primary key,
	salaries int not null
);
select * from salaries;

--create titles table
create table titles(
	ttle_id varchar(30),
	title varchar(30)
);
select * from titles;
