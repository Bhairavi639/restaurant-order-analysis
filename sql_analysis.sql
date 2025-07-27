USE restaurant_db;

 -- 1.view table menu items
 SELECT * FROM menu_items;
 
  -- 2.find the number of items on the menu
SELECT COUNT(*) FROM menu_items;

 -- 3.what are the least and most expensive items on the menu?
SELECT * FROM menu_items
ORDER BY price;          -- order by least expensive
SELECT * FROM menu_items
ORDER BY price DESC;     -- order by most expensive
 
 -- 4.how many italian dishes are on the menu
SELECT COUNT(*) FROM menu_items
WHERE menu_items.category="Italian";

 -- 5.what are the least and most expensive Italian dishes on the menu?
SELECT *
FROM menu_items
WHERE category="Italian"
ORDER BY price;      -- arrange by low to high

SELECT *
FROM menu_items
WHERE category="Italian"
ORDER BY price DESC;   -- arrange by high to low

 -- 6.how many dishes are there in each category
SELECT  category, count(menu_item_id) as num_dishes 
FROM menu_items
GROUP BY category;

 -- 7.what is the average dish price within each category
SELECT category,avg(price) AS avg_price
FROM menu_items
GROUP BY category; 