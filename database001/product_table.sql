-- create table
CREATE TABLE database001.product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(20),
    product_category VARCHAR(20),
    price FLOAT
);

-- insert data
INSERT INTO database001.product (product_name, product_category, price) VALUES
('Laptop', 'Electronics', 899.99),
('Headphones', 'Electronics', 199.99),
('Desk Chair', 'Furniture', 149.50),
('Coffee Mug', 'Kitchen', 12.99),
('Notebook', 'Stationery', 5.49),
('Pen Set', 'Stationery', 8.99),
('Smartphone', 'Electronics', 699.00),
('Backpack', 'Accessories', 59.95),
('Water Bottle', 'Fitness', 24.99),
('Keyboard', 'Electronics', 79.00);
