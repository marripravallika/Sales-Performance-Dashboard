create database sales_dashboard;
use sales_dashboard;

create table sales (
    order_id INT,
    product VARCHAR(100),
    category VARCHAR(100),
    region VARCHAR(100),
    sales_amount INT,
    profit INT,
    order_date DATE
);

insert into sales values
(101,'laptop','electronics','north',55000,8000,'2026-01-01'),
(102,'phone','electronics','south',30000,5000,'2026-01-02'),
(103,'headphones','accessories','east',5000,1200,'2026-01-03'),
(104,'tablet','electronics','west',25000,4000,'2026-01-04'),
(105,'mouse','accessories','north',1500,300,'2026-01-05'),
(106,'keyboard','accessories','south',2500,500,'2026-01-06'),
(107,'monitor','electronics','east',12000,2500,'2026-01-07'),
(108,'printer','electronics','west',15000,3500,'2026-01-08'),
(109,'speaker','accessories','north',4000,900,'2026-01-09'),
(110,'smartwatch','electronics','south',10000,2000,'2026-01-10'),
(111,'camera','electronics','east',35000,7000,'2026-01-11'),
(112,'charger','accessories','west',1200,250,'2026-01-12'),
(113,'router','electronics','north',4500,1000,'2026-01-13'),
(114,'SSD','electronics','south',8000,1800,'2026-01-14'),
(115,'webcam','accessories','east',3000,700,'2026-01-15'),
(116,'earbuds','accessories','west',6000,1400,'2026-01-16'),
(117,'TV','electronics','north',45000,9000,'2026-01-17'),
(118,'microphone','accessories','south',3500,800,'2026-01-18'),
(119,'projector','electronics','east',28000,6000,'2026-01-19'),
(120,'harddisk','electronics','west',7000,1500,'2026-01-20');

select * from sales;
-- total sales
select sum(sales_amount) as total_sales from sales;
-- total profit
select sum(profit) as total_profit from sales;
-- region wise total sales
select region,sum(sales_amount) as total_sales from sales
group by region;
-- category wise
select category, sum(sales_amount) as total_sales from sales
group by category;
-- highest selling product
select product, sales_amount from sales
order by sales_amount desc
limit 1;
-- top 5 profitable products
select product, profit from sales
order by profit desc
limit 5;
-- average sales amount
select avg(sales_amount) as average_sales from sales;