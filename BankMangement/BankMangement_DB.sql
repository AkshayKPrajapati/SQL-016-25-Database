Create database BankMangement;
use BankMangement;
CREATE TABLE user (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    account_number VARCHAR(11) NOT NULL,
    account_type ENUM('Saving', 'Current') NOT NULL,
    account_balance INT DEFAULT 0
);

alter table user add account_name varchar (20);
ALTER TABLE user 
RENAME COLUMN account_name TO customer_name;


select* from user;

INSERT INTO user (account_number, customer_name, account_type, account_balance) VALUES
('10000000001', 'Amit Kumar', 'Saving', 5000),
('10000000002', 'Neha Singh', 'Current', 12000),
('10000000003', 'Ravi Sharma', 'Saving', 800),
('10000000004', 'Priya Mehta', 'Saving', 25000),
('10000000005', 'Arjun Patel', 'Current', 5400),
('10000000006', 'Sneha Rani', 'Saving', 10000),
('10000000007', 'Vikas Gupta', 'Current', 75000),
('10000000008', 'Kiran Das', 'Saving', 3200),
('10000000009', 'Deepak Yadav', 'Saving', 6700),
('10000000010', 'Meera Nair', 'Current', 1500);
