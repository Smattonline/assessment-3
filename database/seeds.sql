-- Seed data goes here



insert into addresses (address, city, state, zipcode) values ('121 Adam St', 'Chicago', 'IL', 58553);
insert into addresses (address, city, state, zipcode) values ('543 Lake Rd Apt 242', 'Chicago', 'IL', 58633);
insert into addresses (address, city, state, zipcode) values ('411 Jackson St Apt 574', 'Dallas', 'TX', 75935);
insert into addresses (address, city, state, zipcode) values ('926 Dennisland Avenue Apt 40', 'Atlanta', 'GA', 59425);
insert into addresses (address, city, state, zipcode) values ('26 Mandy Main St', 'Chicago', 'IL', 58553);

insert into customers (first_name, last_name, email, phone, address_id) values ('Tom', 'Prete', 'tom@gmail.com', '4635537724', 1);
insert into customers (first_name, last_name, email, phone, address_id) values ('Ankur', 'Shah', 'ankur@codeplatoon.com', '4637426042', 2);
insert into customers (first_name, last_name, email, phone, address_id) values ('Musa', 'Shogunle', 'musa@gmail.com', '4429902515', 3);
insert into customers (first_name, last_name, email, phone, address_id) values ('Bugs', 'Bunny', 'bugs@yahoo.com', '4632995171', 1);
insert into customers (first_name, last_name, email, phone, address_id) values ('Jon', 'Jonathan', 'Jon@gmail.com', '4639344116', 5);

insert into products (name, price, category) values ('Men Nike Air', 90.00, 'Men Shoes');
insert into products (name, price, category) values ('Men ASICS', 59.98, 'Men Shoes');
insert into products (name, price, category) values ('Women 11097 Skechers', 51.00, 'Women Shoes');
insert into products (name, price, category) values ('Girls Adidas TR 2.0', 50.00, 'Kids Shoes');
insert into products (name, price, category) values ('Boys Adidas Lite Racer', 50.00, 'Kids Shoes');

insert into orders (customer_id, product_id, address_id, shipping_method, date) values (4, 2, 1, 'UPS Ground', '03/21/2020');
insert into orders (customer_id, product_id, address_id, shipping_method, date) values (4, 1, 4, 'UPS Priority Mail', '06/08/2021');
insert into orders (customer_id, product_id, address_id, shipping_method, date) values (1, 5, 1, 'UPS Next Day Delivery', '05/10/2020');
insert into orders (customer_id, product_id, address_id, shipping_method, date) values (3, 2, 3, 'USPS Priority Mail', '11/17/2019');
insert into orders (customer_id, product_id, address_id, shipping_method, date) values (2, 1, 2, 'USPS Regular Mail', '09/28/2021');