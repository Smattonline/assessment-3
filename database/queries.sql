-- Queries go here

select first_name, last_name, email from customers
where email ilike '%@gmail.com';

select address, city, state, zipcode, orders.id from orders
join addresses on orders.address_id = addresses.id
where orders.date >= '2020/01/01'
and orders.date <= '2020/12/31';

select * from products
where category = 'Kids Shoes';

select name, price from orders as o
join products as p on o.product_id = p.id
join customers as c on o.customer_id = c.id
where first_name = 'Bugs'
and last_name = 'Bunny';
