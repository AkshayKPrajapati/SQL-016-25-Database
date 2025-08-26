use database001;

-- create customer table

create table customer(
	customer_id integer primary key auto_increment,
    customer_name varchar(20),
    customer_address varchar(40),
    customer_phone varchar(11),
    customer_email varchar(20)
);
INSERT INTO customer (customer_name, customer_address, customer_phone, customer_email) VALUES
('Amit Sharma', 'Mumbai, Maharashtra', '9123456789', 'amit.s@gmail.com'),
('Neha Verma', 'Delhi, Delhi', '9876543210', 'neha.v@gmail.com'),
('Raj Patel', 'Ahmedabad, Gujarat', '9988776655', 'raj.p@gmail.com'),
('Sneha Rao', 'Bengaluru, Karnataka', '9090909090', 'sneha.r@gmail.com'),
('Vikram Singh', 'Jaipur, Rajasthan', '9191919191', 'vikram.s@gmail.com'),
('Priya Das', 'Kolkata, West Bengal', '9312345678', 'priya.d@gmail.com'),
('Rohan Mehta', 'Surat, Gujarat', '9401234567', 'rohan.m@gmail.com'),
('Anjali Nair', 'Kochi, Kerala', '9531234567', 'anjali.n@gmail.com'),
('Karan Joshi', 'Pune, Maharashtra', '9700012345', 'karan.j@gmail.com'),
('Divya Reddy', 'Hyderabad, Telangana', '9845671230', 'divya.r@gmail.com');
