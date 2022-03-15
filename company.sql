#create database company;
use company;
#create table job(job_id int(10) primary key, job_title varchar(30), min_salary int(30), max_salary int(30));
#mcac02
#create table region(region_id int(10) primary key, region_name varchar(50));
#create table country(country_id int(10) primary key, country_name varchar(50), region_id int(10), foreign key(region_id) references region(region_id));
#create table location(location_id int(10) primary key, street_address varchar(50),postal_code int(10),city varchar(50), state_province varchar(50), country_id int(10), foreign key(country_id) references country(country_id));
#create table department(departent_id int(10) primary key, department_name varchar(50), location_id int(10), foreign key (location_id) references location(location_id));

#create table employee(employee_id int(10) primary key, first_name varchar(20), last_anme varchar(30), email varchar(20),phone_number int(11), hire_date date,job_id int(10) not null, foreign key(job_id) references job(job_id),salary int(10), manager_id int(10),department_id int(10), foreign key(department_id) references department(departent_id), foreign key(manager_id) references employee(employee_id));

#create table dependents(dependent_id int(10) primary key, first_name varchar(20), last_name varchar(20), relationship varchar(20), employee_id int(10) not null, foreign key(employee_id) references employee(employee_id));

#alter table country modify region_id int not null;
#alter table location modify country_id int not null;
#alter table employee modify  job_id int not null;