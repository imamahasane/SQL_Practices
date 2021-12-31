show databases;
use mysql;
show tables;
select * from db;
describe db;

create database sql_intro;
show databases;

use sql_intro;
create table emp_details (
Name varchar(25), 
Age int, sex char(11),
doj date, 
city varchar(15), 
salary float);

describe emp_details;

-- use sql_intro;
insert into emp_details
values("Jimmy", 35, "M", "2005-05-30", "Narail", 70000),
("Jimmy", 45, "M", "2005-05-30", "Dhaka", 80000),
("Jimmy", 55, "F", "2005-05-30", "Jessore", 90000),
("Jimmy", 65, "M", "2005-05-30", "Khulna", 60000),
("Jimmy", 25, "F", "2005-05-30", "Kustia", 50000),
("Jimmy", 51, "M", "2005-05-30", "Sirajgong", 40000);

select * from emp_details;

select distinct city from emp_details;

select count(name) from emp_details;

select count(name) as count_name from emp_details;

select sum(salary) from emp_details;

select avg(salary) from emp_details;

select name, age, city from emp_details;

select * from emp_details where age > 50;

select name, sex, sex, city from emp_details where sex = 'F';

select * from emp_details where
city = "Jessore" or city = "Dhaka";

select * from emp_details where
city in ("Dhaka", "Jessore");

select * from emp_details where
doj between "2005-01-01" and "2021-01-01";

select * from emp_details where
age > 30 and sex = "F";

select sex, sum(salary) as total_salary from emp_details group by sex;

select * from emp_details order by salary;

select * from emp_details order by salary desc;

select length("Bangladesh") as total_len;

select repeat('@', 10) as valu;

# String Function

select upper("imam ahasan") as upper_string;

select lower("SAMIUL ahasan") as upper_string;

select character_length("Imam AhasaN") as total_len;

select city, character_length(city) as total_len
from emp_details;

select city, char_length(city) as total_len 
from emp_details;

select concat('imam', ' is a', ' good', ' programmer') as FeedBac;

select doj, Name, concat(Name, " ", Age) as name_age
from emp_details;

select reverse("Ahasan") as rev_sting;

select reverse(city) from emp_details;

select replace("Imam is a Data Scientest", "Data Scientest", "Data Analysist") as re_input_string;

select ascii("a");

select ascii("A");

select ascii("8");


select curdate();

select day(curdate());

select now();

