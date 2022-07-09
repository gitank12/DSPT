use xyz;
Create table customers_table (customer_id int not null, customer_name varchar(20)not null, address varchar(100)not null);
describe customers_table;

Create table order_tables (order_id int not null, order_name varchar(20)not null, customer_id int,amount int);
describe order_table;

create table sales_table (sales_id int,first_name varchar(20),city varchar(20),commission_rate int);
describe sales;

insert into customers_table values (101,"adam","Bangalore");
insert into customers_table values (102,"alex","Delhi");
insert into customers_table values (103,"stuart","Rohtak");
select * from customers_table;

insert into order_tables values (10,"order_1",101,1000);
insert into order_tables values (11,"order_2",102,500);
insert into order_tables values (12,"order_3",103,620);
select * from order_tables;

insert into sales_table values (1001,"PEEI","London",12);
insert into sales_table values (1002,"SeRRes","San Jose",13);
insert into sales_table values (1004,"JudiTH","London",11);
insert into sales_table values (1007,"rifkiN","Barcelona",15);
insert into sales_table values (1003,"axelRod","New york",10);
insert into sales_table values (1004,"FrAN","London",26);
insert into sales_table values (1008,"JohN","London",0);
insert into sales_table values (1009,"CharkeS","Florida",0);
select * from sales_table;

#1
select first_name from sales_table where sales_id in
(select b.order_id from customers_table c join order_tables b
on c. customer_id = b.customer_id);

select first_name as 'fullname', order_id from sales_table s inner join
customers_table c on s.sales_id = s.sales_id inner join order_table o on
o.customer_id = c.customer_id;

select * from order_tables;

#2
select s.first_name as 'salesperson', c.customer_name from sales_table 
s inner join customers_table c on s.sales_id = s.sales_id;

#3
select first_name as 'salesperson',count(customer_id)from sales_table s inner join customers_table c on s.sales_id where customer_id>1;

#4
describe sales_table;
SELECT sales_id, count(commission_rate)
FROM sales_table
ORDER BY count(commission_rate);

#5
SELECT *
FROM sales_table
WHERE sales_id =
    (SELECT sales_id 
     FROM sales_table
     WHERE first_name= 'judith');
#6
SELECT  sales_id,first_name,city,commission_rate
FROM sales_table
LEFT JOIN  Order_tables ON sales_id = Order_id
WHERE sales_id IS NULL;

#7
SELECT sales_table.first_name AS "Salesman",
customers_table.customer_name, customer_name.city 
FROM sales_table,customers_table
WHERE sales_table.city=customer_table.city;

#8
SELECT first_name,
       c.customer_name,
       c.city
  FROM sales_table
  INNER JOIN customers_table c
    ON s.city = c.city;
    
#9
SELECT commission_rate
FROM sales_table
WHERE sales_id IN
    (SELECT sales_id 
     FROM customers_table
     WHERE city = 'london');
     
	
#10
select * FROM sales_table
WHERE commission_rate > 12;

#11
select sfirst_name,s.sales_id from sales_table s join customers_table c on 
s.city!=c.city;

#12
select s.first_name as sales_id  s join customers_table c on s.sales_id=c.sales_id join order_tables o on 
c.customer_id =o.customer_id where o.order_date not between 10-03-2020 and 10-05-2020;

#13
select s.first_name from sales_table s join customer c on s.sales_id= c.sales_id join orders o on c.customer_id =o.customer_id;

#14
select * from order_tables;
SELECT customer_id, COUNT(DISTINCT order_id), 
MAX(amount) 
FROM order_tables 
ORDER BY 2 DESC;

#15
select UPPER customer_name from customers_table ORDER BY UPPER (customer_name);