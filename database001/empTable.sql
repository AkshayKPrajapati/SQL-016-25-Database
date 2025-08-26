use database001;

CREATE TABLE empTable (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT,
    manager_id INT,
    contact VARCHAR(20),
    FOREIGN KEY (department_id) REFERENCES department(dept_id),
    FOREIGN KEY (manager_id) REFERENCES empTable(emp_id)
);

INSERT INTO empTable (emp_name, salary, department_id, manager_id, contact)
VALUES
('Alice Johnson', 60000.00, 1, NULL, '123-456-7890'),    -- First employee, no manager
('Bob Smith', 75000.00, 2, 1, '987-654-3210'),           -- Reports to Alice
('Charlie Lee', 80000.00, 2, 2, '555-123-4567'),         -- Reports to Bob
('Dana Scott', 70000.00, 3, 1, '444-222-1111'); 

INSERT INTO empTable (emp_name, salary, department_id, manager_id, contact)
VALUES
('Alice Johnson', 60000.00, null, NULL, '123-456-7890');    -- First employee, no manager
 
select * from empTable;