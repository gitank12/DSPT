show tables;
use hr;
select * from employees;

#1
select count(*) as total_employee from employees;

#2
select department_id,count(*) as employee_count from employees;

#3
select first_name,salary from employees where salary > 6000;

#4
select count(*) as "EmployeesEarnMoreThan20000" from employees where salary > 20000;

#5
select * from employees;
Select department_id, count(*) as employee_count from employees where department_name ="IT";

#6
Describe employees;
alter table employees add annualCTC int;
set sql_safe_updates=0;

#7
update employees set salary=salary+salary*20/100 where salary between 2000 and 15000;
update employees set salary=salary+salary*10/100 where salary between 16000 and 20000;
update employees set salary=salary+salary*5/100 where salary between 21000 and 25000;
update employees set annualCTC = salary*12;

#8
select * from employees where commision_pct is not null;

#9
select employee_id, concat(first_name,'',last_name) as full_name from employees where commission_pct is null;

#10
select first_name, last_name, email, phone_number, employee_id from employees where commission_pct is null;

#11
Select * from employees group by department_id order by salary desc limit 3;

#12

#13
select * from employees where job_id like '%CLERK%';

#14
select count(*) as NoClericalEmp, avg(salary) as AverageSalary where job_id like '%CLERK%';

#15
#EXCEL

#16
select department_id, avg(salary) as AverageSalary from employees group by department_id;

#17
Select department_id, count(*) from employees where salary between 7000 and 10000 group by department_id;

#18


 