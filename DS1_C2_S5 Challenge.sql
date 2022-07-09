create database pizza;
use pizza;

#task 1
select cust.od_id,orders.bill_no,cust.customer_name,orders.pizza_name,orders.delivery_status
from cust
inner join orders on cust.od_id = orders.od_id;

#task 3
create table cust (customer_name varchar(20), od_id int, phone_no varchar(30));
insert into cust values ("shania",1,9774563210);
select * from cust;
insert into cust values ("nelson",2,8776548922);
insert into cust values ("rizla",3,9487563210);
insert into cust values ("myra",4,9685471236);
insert into cust values ("nathan",5,7854693214);
select * from cust;

#task 4
create table orders (od_id int,bill_no int,pizza_name varchar(50),pizza_size varchar(20),Toppings varchar(20),
T_amount int,delivery_status varchar(50));
insert into orders values (1,101,"Corn_Delight"," Regular","null",150,"delivered");
insert into orders values (2,102,"Cheese_Blast","Large","null",300,"on_the_way");
insert into orders values (3,103,"BBQ_chicken","Large","cheese",600,"delivered");
insert into orders values (4,104,"peri_peri_chicken"," Regular","pepproni",250,"Being_prepared");
insert into orders values (5,105,"Cheddar_cheese","Large","lava_cake", 550,"delivered");
select * from orders;

#task 5 (nonveg menu)
Create table pizza_outlet_nveg (Pizza_name Varchar(50),Pan_price int, Regular_price int, large_price int);
insert into pizza_outlet_nveg values ("BBQ_chicken",150,250,350);
insert into pizza_outlet_nveg values ("peri_peri_chicken",150,290,380);
insert into pizza_outlet_nveg values ("salami",160,270,310);
insert into pizza_outlet_nveg values ("roasted_chicken",190,280,350);
insert into pizza_outlet_nveg values ("tandoori_mix",170,265,300);
select * from pizza_outlet_nveg;

#task 2 additional (veg menu) 
Create table pizza_outlet_veg (Pizza_name Varchar(50),Pan_price int, Regular_price int, large_price int);
insert into pizza_outlet_veg values ("corn_delight",100,150,200);
insert into pizza_outlet_veg values ("capsicum_onion",90,190,200);
insert into pizza_outlet_veg values ("cheddar_cheese",200,350,450);
insert into pizza_outlet_veg values ("cheese_blast",190,250,300);
insert into pizza_outlet_veg values ("paneer_tikka",180,250,300);
select * from pizza_outlet_veg;

Create table add_on (Additional varchar (50), price int);
insert into add_on values ("pepproni",100);
insert into add_on values ("salami",100);
insert into add_on values ("chicken",100);
insert into add_on values ("paneer",100);
insert into add_on values ("bbq_chicken",100);
insert into add_on values ("bbq_sauce",50);
insert into add_on values ("lava_cake",150);
insert into add_on values ("cheese",100);
select * from add_on;


select * from cust;
select * from orders;
select * from add_on;

#task 6
alter table orders add add_crust varchar (20);
update orders set add_crust = " thin" where  pizza_size = "large";
select * from orders;

# 7
select * from pizza_outlet_nveg;
select * from pizza_outlet_veg;

select pizza_outlet_nveg.Pizza_name ,pizza_outlet_veg.Pizza_name
from pizza_outlet_nveg
left join pizza_outlet_veg on pizza_outlet_nveg.Pizza_name = pizza_outlet_veg.Pizza_name;
 
 #and
 select pizza_outlet_nveg.Pizza_name ,pizza_outlet_veg.Pizza_name
from pizza_outlet_nveg
right join pizza_outlet_veg on pizza_outlet_nveg.Pizza_name = pizza_outlet_veg.Pizza_name;

select * from add_on;

#task 8
select * from orders
where pizza_size ="large";

#task 9
select * from orders
order by toppings;  # no topping is been the most prefferred in my pizza outlet as all people have different choices.

#task 10
select max(t_amount) as highestPrice
from orders;

#task 11
select * from orders
where delivery_status ="delivered";

#task 12
select * from orders;
alter table orders add updated_bill int;
update orders set updated_bill =(t_amount- (10/100)* (t_amount)) where pizza_size = "large";
set sql_safe_updates = 0;
select * from orders;

