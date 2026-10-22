create database employee;
use employee;
create table departments (
department_id int,
department_name varchar(100)
);
create table location (
location_id int,
location varchar(30)
);
create table employees (
employee_id int,
employee_name varchar(50),
gender enum('m','f'),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2)
);
alter table employees
add email varchar(100);
alter table employees
modify designation varchar(150);
alter table employees 
drop column age;
alter table employees
rename column hire_date to date_of_joining;
rename table departments to departments_info;
rename table location to locations;
truncate table employees;
drop table employees;
drop database employee;
drop database if exists employee;
create database employee;
use employee;
create table departments (
department_id int primary key,
department_name varchar(100) not null unique 
);
create table location (
location_id int primary key auto_increment,
location varchar (30) not null unique
);
create table employees (
employee_id int primary key,
employee_name varchar(50) not null,
gender enum('m','f') not null,
age int check (age >= 18),
hire_date date default (current_date),
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),
constraint fk_employees_departments
foreign key (department_id) references departments(department_id)
on delete set null on update cascade,
constraint fk_employees_location
foreign key (location_id) references location(location_id)
on delete set null on update cascade
);
show tables;
describe departments;
describe location;
describe employees;















