--table creation

 CREATE TABLE Sales_Data (
    Row_id INT,
    order_id TEXT,
    order_date DATE,
    ship_date DATE,
    ship_mode TEXT,
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    region TEXT,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,
    sales NUMERIC,
    quantity INT,
    discount NUMERIC,
    profit NUMERIC,
	discount_group Text
);

--sales overview

select 
sum(sales) as total_sales,
sum(profit) as total_profit,
sum(profit)/sum(sales) as profit_margin
from sales_data;

--region wise performance

select region, sum(sales) as total_sales, sum(profit) as total_profit
from sales_data
group by region
order by total_sales desc;


--Category wise performance
SELECT category,
       SUM(sales) AS sales,
       SUM(profit) AS profit,
       SUM(profit)/SUM(sales) AS profit_margin
FROM sales_data
GROUP BY category
ORDER BY profit DESC;

--overall discount impact

SELECT discount_group,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit
FROM sales_data
GROUP BY discount_group
ORDER BY total_profit DESC;

--impact of discount on profit of different category

select sum(profit) as total_profit, category, discount_group
from sales_data
group  by category, discount_group
order by total_profit desc

--impact of discount on profit of different region

select sum(profit) as total_profit,region, discount_group
from sales_data
group  by region, discount_group
order by total_profit desc

--Segment performance

SELECT segment,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit
FROM sales_data
GROUP BY segment
ORDER BY total_profit DESC;

--sub-category performance

select  sub_category, sum(sales) as total_sales, sum(profit) as total_profit
from sales_data
group by sub_category
order by total_profit desc;

--product wise profit margin

SELECT product_name,
       SUM(profit)/SUM(sales) AS profit_margin
FROM sales_data
GROUP BY product_name
ORDER BY profit_margin desc;


--Top 10 products (revenue)

select product_name, sum(sales) as product_sales
from sales_data
group by product_name
order by product_sales desc
limit 10;

--Top 10 products (profit)

select product_name, sum(profit) as product_profit
from sales_data
group by product_name
order by product_profit desc
limit 10;

--Loss-making products

select product_name, sum(profit) as product_profit
from sales_data
group by product_name
having sum(profit)<0
order by product_profit;

--Top 10 customers by revenue

select customer_name, sum(sales) as revenue_individual_customer, sum(profit) as profit_individual_customer
from sales_data
group by customer_name
order by revenue_individual_customer desc
limit 10

-- Bottom 10 customers (loss)

SELECT customer_name, SUM(profit) AS profit
FROM sales_data
GROUP BY customer_name
ORDER BY profit	 ASC
LIMIT 10;

--Customer frequency

select customer_id, customer_name, count(distinct order_id) as orders
from sales_data
group by customer_id, customer_name
order by orders desc;

--Time analysis

--Monthly trend

SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    SUM(sales) AS sales,
    SUM(profit) AS profit
FROM sales_data
GROUP BY month
ORDER BY month;

--yearly_trend

SELECT 
    EXTRACT(year FROM order_date) AS year,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY year
ORDER BY year Asc;

--Quantity vs profit

select product_name, sum(quantity) as total_quantity, sum(profit) as total_profit
from sales_data
group by product_name
order by total_quantity desc


