use database001;

CREATE TABLE department (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);


INSERT INTO department (dept_name, location) VALUES
('Human Resources', 'Delhi'),
('Finance', 'Mumbai'),
('Engineering', 'Bengaluru'),
('Marketing', 'Hyderabad'),
('Sales', 'Chennai'),
('IT Support', 'Pune'),
('Research & Development', 'Ahmedabad'),
('Customer Service', 'Kolkata'),
('Legal', 'Jaipur'),
('Procurement', 'Lucknow');
