Create table customers (customer_id int not null, customer_name varchar(20)not null, address varchar(100)not null);
describe customers;
Create table orders (order_id int not null, order_name varchar(20)not null, customer_id int);
describe orders;
create table sales(sales_id int,first_name varchar(20),city varchar(20),commission_rate int);
describe sales;
insert into customers values (101,"adam","Bangalore");
insert into customers values (102,"alex","Delhi");
insert into customers values (103,"stuart","Rohtak");
select * from customers;

insert into orders values (10,"order_1",101);
insert into orders values (11,"order_2",102);
insert into orders values (12,"order_3",103);
select * from orders;

insert into sales values (1001,"PEEI","London",12);
insert into sales values (1002,"SeRRes","San Jose",13);
insert into sales values (1004,"JudiTH","London",11);
insert into sales values (1007,"rifkiN","Barcelona",15);
insert into sales values (1003,"axelRod","New york",10);
insert into sales values (1004,"FrAN","London",26);
insert into sales values (1008,"JohN","London",0);insert into sales values (1009,"CharkeS","Florida",0);
select * from sales;
alter table orders add amount int;
describe orders;
select * from orders;
Create table order_table (order_id int not null, order_name varchar(20)not null, customer_id int,amount int);
describe order_table;
insert into order_table values (10,"order_1",101,1000);
insert into order_table values (11,"order_2",102,500);
insert into order_table values (12,"order_3",103,620);
select * from order_table;

#1
SELECT ADDRESS FROM customers;
#2
SELECT first_name from sales where first_name like 'P%' ORDER BY first_name;
SELECT first_name from sales where first_name like '___L%' ORDER BY first_name;
#3
SELECT sales_id ,first_name ,city,commission_rate FROM sales WHERE CITY IN ('San Jose','Brazil','London');
#4
SELECT first_name from sales where first_name like 'G%' OR first_name LIKE 'A%' ORDER BY first_name;
#5
select max(commission_rate) from sales;
#6
SELECT sales_id ,first_name ,city,commission_rate FROM sales WHERE CITY IN ('Barcelona','London');
#7

#8
select sum(amount) from order_table;
#9
select commission_rate from sales where commission_rate is null;
#10
SELECT customer_name FROM customers;
#11
SELECT sales_id ,first_name ,city,commission_rate FROM sales WHERE commission_rate between 200 and 300;
#12
SELECT customer_name FROM customers;
#13
select * from order_table order by amount desc;
#14
select avg(amount) from order_table;
#15
select count(*) from customers;
#16
select * from customers order by customer_name desc;
#17
select count(amount) from order_table;
#18
select max(amount) from order_table;
#19
select * from sales where commission_rate =(select max(commission_rate) from sales);
#20
select * from sales where commission_rate =(select min(commission_rate) from sales);