use database001;

CREATE TABLE customer_details (
    cid INT PRIMARY KEY,
    cname VARCHAR(20),
    account_num BIGINT,
    loan_id INT,
    FOREIGN KEY (loan_id) REFERENCES loan(loan_id) ON DELETE cascade
);

INSERT INTO customer_details (cid, cname, account_num, loan_id) VALUES
(1, 'Alice', 123456789012, 101),
(2, 'Bob', 234567890123, 102);

INSERT INTO customer_details (cid, cname, account_num, loan_id) VALUES
(54, 'Alice', 123456789012, 104);
select * from customer_details;
