create database retail_sales_db;

select * from retail_sales_cleaned_data;

-- 1. What is total Sales
select sum(sales) as total_sales
from retail_sales_cleaned_data;

-- 2. What is total profit?
select sum(Profit) as total_profit
from retail_sales_cleaned_data;

-- 3. Which category has highest sales?
select Category, sum(sales) as total_sales
from retail_sales_cleaned_data
group by Category 
order by total_sales Desc ;

-- 4. Which region performs best?
select Region, sum(sales) as total_sales
from retail_sales_cleaned_data
group by Region 
order by total_sales Desc ;

-- 5. Monthly sales trend
select `Month`, sum(sales) as Revenue
from retail_sales_cleaned_data
group by `Month` 
order by `Month` Desc ;

-- 6. Most profitable category
select Category, sum(profit) as total_profit
from retail_sales_cleaned_data
group by Category 
order by total_profit Desc ;

-- 7. Average quantity sold
select avg(Quantity) as AVG_Quantity
from retail_sales_cleaned_data;