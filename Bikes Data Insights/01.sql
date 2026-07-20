
-- Which year had the highest number of orders?
select year(order_date)  Order_Year , 
count(*) Total_Orders 
from orders group by Order_Year;

-- Show the most expensive product in every category.
With category as (
select c.Category_name Category , 
p.Product_name Product , p.list_price Price , 
row_number() over(PARTITION BY c.category_name
ORDER BY p.list_price DESC) AS Row_no
from products p join categories c 
on p.category_id=c.category_id)
select Category , Product , Price 
from category where Row_no=1;

-- Find the Top 10 customers who have spent the highest amount.
With customers as 
(select c.customer_id,concat(first_name," ",last_name) Customer_Name , 
i.list_price , i.quantity , i.discount from customers c 
join orders o on c.customer_id=o.customer_id
join order_items i on o.order_id=i.order_id)
select Customer_Name , round(sum(((1-discount)*list_price)*quantity),2) Total 
from customers group by customer_name order by total desc limit 10;

-- Finance department wants customer segmentation. Classify customers as  >30000 → VIP , 10000-20000 → Regular , <10000 → New ###############
select concat(c.first_name , " " , c.last_name) Customer_name , 
round(sum(((1-i.discount)*i.list_price)*i.quantity),2) Total , 
CASE
           WHEN sum(((1-i.discount)*i.list_price)*i.quantity) <=  10000 THEN 'New'
           WHEN sum(((1-i.discount)*i.list_price)*i.quantity) >= 30000 THEN 'VIP'
           ELSE 'Regular'
       END AS Category
from customers c 
join orders o on c.customer_id=o.customer_id 
join order_items i on o.order_id=i.order_id 
group by Customer_name 
order by Total desc;  

-- Rank products according to revenue.
With Ranking as (
select p.product_name Product, round(sum(((1-i.discount)*i.list_price)*i.quantity),2) Revenue 
from order_items i 
join products p 
on i.product_id=p.product_id group by product)
select RANK() OVER (ORDER BY Revenue DESC) AS Rank_No , Product,Revenue
FROM Ranking;

-- Show the most expensive product in every category.
With category as (
select c.Category_name Category , 
p.Product_name Product , p.list_price Price , 
row_number() over(PARTITION BY c.category_name
ORDER BY p.list_price DESC) AS Row_no
from products p join categories c 
on p.category_id=c.category_id)
select Category , Product , Price 
from category where Row_no=1;

-- Management wants a sales summary.Create a report showing ,Brand ,Number of Products ,Average Price,Highest Price,Lowest Price
select brand_name Brand ,COUNT(p.product_id) AS Total_Products,
round(avg(list_price),2) Avgerage_Price , max(list_price) Highest_Price , min(list_price) Lowest_Price
from brands b join products p on b.brand_id=p.brand_id group by brand order by Brand;

-- Compare Year-over-Year growth in revenue.
With Year as (select 
year(order_date) Year , round(sum(((1-discount)*list_price)*quantity),2) Revenue
from orders o join order_items i 
on o.order_id=i.order_id group by year)
select Year , Revenue , 
concat(round(((Revenue - Lag(Revenue) Over(Order By Year))/ Lag(Revenue) Over(Order by Year)) * 100,2)," %") YoY_Growth
from year;

-- Which quarter performs the best?
select 
concat('Q',quarter(order_date)) Quarter , round(sum(((1-discount)*list_price)*quantity),2) Revenue
from orders o join order_items i 
on o.order_id=i.order_id group by quarter
order by revenue desc;

-- Management wants a sales summary.Create a report showing ,Brand ,Number of Products ,Average Price,Highest Price,Lowest Price
select brand_name Brand ,COUNT(p.product_id) AS Total_Products,
round(avg(list_price),2) Avgerage_Price , max(list_price) Highest_Price , min(list_price) Lowest_Price
from brands b join products p on b.brand_id=p.brand_id group by brand order by Brand;

-- Find customers who have placed more than 1 order.
select  concat(first_name," ",last_name) Cust_Name , count(*) Total  
from orders o join customers c on o.customer_id=c.customer_id 
group by o.customer_id , c.first_name , c.last_name having total > 1 order by total desc;


-- Month wise comparison of orders

select year(order_date) Year , 
monthname(order_date) as Month , 
count(*) Total_orders
from orders where month(order_date)<5 
group by year(order_date) , 
month(order_date),monthname(order_date)
order by year(order_date);

