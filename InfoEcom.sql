create database InfoEcom;

use InfoEcom;


create table customer(
    customer_id int primary key,
    name varchar(20),
    email varchar(20),
    phone varchar(20)
);

create table product(
    product_id int PRIMARY key,
    product_name varchar(20),
    price int,
    description varchar(20),
    stock int,
    category varchar(20)

);

create table orders (
    order_id int primary key,
    customer_id int,
    constraint fk_customer foreign key (customer_id) references customer(customer_id),
    product_id int,
    constraint fk_product foreign key (product_id) references product(product_id),
    quantity int,
    order_date date,
    total_amount int
);



SELECT * FROM customer;
SELECT * FROM product;
SELECT * FROM orders;
