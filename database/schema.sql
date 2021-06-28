-- Schema creation goes here


-- createdb lavish_store
-- psql lavish_store

drop table if exists addresses cascade;
create table addresses (
  id           serial PRIMARY KEY,
  address  varchar(255) not null,
  city   varchar(64) not null,
  state   varchar(64) not null,
  zipcode  integer not null
);

drop table if exists customers cascade;
create table customers (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  email    varchar(255) NOT NULL,
  phone     varchar(10),
  address_id integer references addresses(id) not null
);

drop table if exists addresses cascade;
create table addresses (
  id           serial PRIMARY KEY,
  customer_id  integer references customers(id) not null,
  address  varchar(255) not null,
  city   varchar(64) not null,
  state   varchar(64) not null,
  zipcode  integer not null
);

drop table if exists products cascade;
create table products (
  id        serial PRIMARY KEY,
  name      varchar(255) not null,
  price     decimal not null,
  category  varchar(32) not null
);

drop table if exists orders cascade;
create table orders (
  id        serial PRIMARY KEY,
  customer_id   integer references customers(id) not null,
  product_id    integer references products(id) not null,
  address_id    integer references addresses(id) not null,
  shipping_method  varchar(64) not null,
  date          date not null 
);

alter table addresses
drop column if exists customer_id;