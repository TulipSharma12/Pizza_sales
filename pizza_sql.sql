use [pizza db];

select* from pizza_sales;

select SUM(total_price) as Total_Revenue from pizza_sales;

select SUM(total_price)/ COUNT(distinct order_id) as Average_Order_value from pizza_sales;

select SUM(quantity) as Total_pizza_sold from pizza_sales;

select COUNT(distinct order_id) as total_orders from pizza_sales;

select cast(SUM(quantity) AS decimal(10,2))/ cast(COUNT(distinct order_id)AS decimal(10,2)) as Average_pizzas_per_order from pizza_sales;

select DATENAME(dw, order_date) as Day, COUNT(distinct order_id) as Total_orders from pizza_sales
group by datename(dw, order_date)
order by Total_orders desc;


select DATENAME(month, order_date) as Month, COUNT(distinct order_id) as Total_orders from pizza_sales
group by DATENAME(month, order_date) 
order by Total_orders desc;

select * from pizza_sales;

select pizza_category,SUM(total_price) as Total_sale, SUM(total_price) *100 / (select SUM(total_price) from pizza_sales where month(order_date) = 1) as Percentage from pizza_sales
where month(order_date) = 1
group by pizza_category;

select pizza_size,SUM(total_price) as Total_sale, SUM(total_price) *100 / (select SUM(total_price) from pizza_sales) as Percentage from pizza_sales
group by pizza_size
order by Percentage desc;

select TOP 5 pizza_name, SUM(total_price) as Total_Revenue from pizza_sales 
group by pizza_name
order by Total_Revenue desc;

select TOP 5 pizza_name, SUM(total_price) as Total_Revenue from pizza_sales 
group by pizza_name
order by Total_Revenue;

select TOP 5 pizza_name, SUM(quantity) as Quantity from pizza_sales 
group by pizza_name
order by Quantity desc;

select TOP 5 pizza_name, SUM(quantity) as Quantity from pizza_sales 
group by pizza_name
order by Quantity;


select TOP 5 pizza_name, count(distinct order_id) as Total_orders from pizza_sales 
group by pizza_name
order by Total_orders desc;

select TOP 5 pizza_name, count(distinct order_id) as Total_orders from pizza_sales 
group by pizza_name
order by Total_orders;



select * from pizza_sales;














