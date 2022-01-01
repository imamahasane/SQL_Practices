select dept, avg(salary) as avg_salary
from employees
group by dept
having avg(salary) > 60000;