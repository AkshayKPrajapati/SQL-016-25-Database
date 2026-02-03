use springboot;
-- create new database
create database springboot;

-- create laptop table
CREATE TABLE laptop (
    id INT PRIMARY KEY,
    laptop_name VARCHAR(255),
    price INT,
    ram VARCHAR(50),
    color VARCHAR(50)
);


-- show table data

select* from laptop;

-- select by city
select * from student where city="pune";
