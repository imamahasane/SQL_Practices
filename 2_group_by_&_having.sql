# The Group By statement groups records into summary rows and returns one record for each group 

#Syntax

#select column_names
#from table_name
#where condition
#group by column_names
#order by column_names 

use sql_intro;

create table employees(
Emp_Id int primary key, 
Emp_name varchar(22),
Age int,
Gender char(1), 
DOJ date, 
Dept varchar(20), 
City varchar(15),
Salary float);

describe employees;

insert into employees values
(101, "Jimmy", 35, "F", "2005-05-30", 'DNN', "Narail", 70000),
(102, "Mammy", 45, "M", "2015-05-30", 'mer', "Dhaka", 80000),
(103, "Kanny", 55, "F", "2011-05-30", 'fdc', "Jessore", 90000),
(102, "Laony", 65, "M", "2006-05-30", 'okl', "Khulna", 60000),
(105, "Qans", 25, "F", "2007-05-30", 'DS', "Kustia", 50000),
(103, "Asmdk", 51, "M", "2005-05-30", 'DA', "Sirajgong", 40000),
(107, "Tanuy", 25, "M", "2014-05-30", 'ML', "Borisal", 123000),
(108, "Oanasy", 29, "F", "2012-05-30", 'DL', "Foridpur", 98000),
(109, "Dasarry", 61, "M", "2016-05-30", 'CNN', "Feny", 65000),
(109, "Cudlar", 89, "F", "2007-05-30", 'mer', "Chadpur", 70000),
(101, "Vedki", 49, "M", "2005-05-30", 'CV', "Norsindi", 49000);

select * from employees;

select distinct City from employees;

select distinct Dept from employees;

select avg(Age) from employees;

# avg age in each dept
select dept, avg(age) as average_age from employees 
group by dept;

select dept, round(avg(age)) as average_age from employees 
group by dept;

select dept, round(avg(age), 1) as average_age from employees 
group by dept;

select dept, sum(salary) from employees
group by dept;

select dept, sum(salary) as Total_salary from employees
group by dept;

select count(emp_id) as Number_of_emp, city from employees
group by city
order by count(emp_id) desc;

select year(doj) as joint_year, count(emp_id) as id_count 
from employees
group by year(doj)
order by year(doj);

create table sales (product_id int, sell_price float, quantity int, state varchar(20 ))