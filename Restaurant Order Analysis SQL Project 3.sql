-- 1. Combine the menu_items and order_details tables into a single table

select *
from menu_items;

select * 
from order_details;

select * 
from order_details od left join menu_items mi
	on od.item_id = mi.ï»¿menu_item_id;

-- 2. What were the least and most ordered items? What categories were they in?alter

select item_name, category, count(ï»¿order_details_id) as num_purchases
from order_details od left join menu_items mi
	on od.item_id = mi.ï»¿menu_item_id
group by item_name, category
order by num_purchases;

-- 3. What were the top 5 orders that spent the most money?

select order_id, sum(price) as total_spend
from order_details od left join menu_items mi
	on od.item_id = mi.ï»¿menu_item_id
group by order_id
order by total_spend desc
limit 5; 

-- 4. View the deatils of the highest spend order. What insights can you gather from

select category, count(item_id) as num_items
from order_details od left join menu_items mi
	on od.item_id = mi.ï»¿menu_item_id
where order_id = 440
group by category;

-- 5. View the details of the top highest spend orders. What insights can you gather from 

select order_id, category, count(item_id) as num_items
from order_details od left join menu_items mi
	on od.item_id = mi.ï»¿menu_item_id
where order_id in (440, 2075, 1957, 330, 2675)
group by order_id, category;

