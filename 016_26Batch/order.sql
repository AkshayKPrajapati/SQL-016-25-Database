

CREATE TABLE orderinfo (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    cust_id INT,
    product_id INT,
    FOREIGN KEY (cust_id) REFERENCES customers(c_id),
    FOREIGN KEY (product_id) REFERENCES product(p_id)
);

INSERT INTO orderinfo (order_date, cust_id, product_id)
VALUES ('2026-07-30', 4, 2);

select * from orderinfo;