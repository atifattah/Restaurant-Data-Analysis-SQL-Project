drop schema if exists restaurant_db;

create schema restaurant_db;

use rsetaurant_db;

-- 1. Table structure for table `order_details`

create table order_details (
	order_details_id smallint not null,
    order_id smallint not null,
    order_date date,
    order_time time,
    item_id smallint,
    primary key (order_details_id)
);
    
-- 2. View the menu items table

select * from menu_items;

--  3. Find the number of items on the menu

select count(*) from menu_items;

--  4. What are the least and most expensive items on the menu

select * from menu_items
order by price;

select * from menu_items
order by price desc;

-- 5. How many italian dishes are on the menu?

select count(*) from menu_items
where category = 'italian';

-- 6. What are the least and most expensive italian dishes on the menu?

select *
from menu_items
where category = 'italian'
order by price;

select *
from menu_items
where category = 'italian'
order by price desc;

-- 7. How many dishes are in each category?

select category, count(ï»¿menu_item_id) as num_dishes
from menu_items
group by category;

-- 8. What is the average dish price within each category??

select category, avg(price) as avg_dishes
from menu_items
group by category;
