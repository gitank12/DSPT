use XYZ;
Create table salesperson_table
 (salesperson_salesid smallint primary key not null,
 salesperson_name varchar (25) not null,
 salesperson_city varchar (15) not null , 
 commission_rate int not null);
 describe salesperson_table;
 Create table customer_table (customer_id smallint primary key not null ,
 customercustomer_firstname varchar(30) not null,customercustomer_lastname varchar(30) not null,
 customercustomer_city varchar(30) not null,customercustomer_rating varchar(30) not null,salesid smallint not null, 
 foreign key (salesid) references salesperson_table(salesperson_salesid));
describe customer_table;
Create table orderstable (orderid int primary key, amount int, orderdate date, customerid smallint, foreign key (customerid) references customer_table (customer_id));
describe orderstable;
insert into salesperson_table values (1001,"peei","london",12);
select * from salesperson_table;
insert into salesperson_table values (1002,"serres","new york",13);
insert into salesperson_table values (1003,"axelrod","san jose",10);
insert into salesperson_table values(1004,"judith","london",11);
insert into salesperson_table values(1005,"fran","london",26);
insert into salesperson_table values(1007,"rifkin","barcelona",15);
insert into salesperson_table values(1008,"john","london",0);
insert into salesperson_table values(1009,"charles","florida", 0);
select * from salesperson_table;
insert into customer_table values (2001,"hoffman","anny","london",100,1001);
insert into customer_table values(2002,"goivanni","jenny","rome",200,1002);
insert into customer_table values(2003,"liu","williams","san jose",100,1003);
select * from customer_table;
insert into customer_table values(2004,"grass","harry","berlin",300,1002);
insert into customer_table values(2005,"clemens","john","london",200,1001);
insert into customer_table values(2006,"cisneros","fanny","san jose",200,1007);
insert into customer_table values(2007,"pereira","johnathan","rome",300,1004);
select * from customer_table;
select * from salesperson_table;
insert into orderstable values (3001,123,2020/02/01,2007);
select * from orderstable;
insert into orderstable values (3001,123,01/02/2020,2007);
insert into orderstable values(3002,100,30/07/2000,2007);
insert into orderstable values(3003,100,02/10/2020,2001);
insert into orderstable values(3005,201,09/10/2011,2003);
insert into orderstable values(3007,167,02/04/2020,2002);
insert into orderstable values(3008,189,06/03/2020,2002);
insert into orderstable values(3009,145,23/02/2012,2005);
insert into orderstable values(3010,200,10/10/2012,2006);
insert into orderstable values(3011,100,18/09/2000,2004);
select * from orderstable;
select * from customer_table;
select * from salesperson_table;