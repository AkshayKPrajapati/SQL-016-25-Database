use 016_26Batch;

-- join 

-- inner join
select * from employee;
select * from department;

select emp_id,emp_name,contact,dept_name,salary from employee 
join department  on (employee.dept_id=department.dept_id);

 -- only match data
select emp_id,emp_name,contact,dept_name,salary from employee  emp
join department dept on (emp.dept_id=dept.dept_id); 



-- outer join table
-- select all employee name and department name even they are not working .
-- left join (Right -> match all data or left --> get match or unmatch data )
select emp_name, dept_name from employee emp left join department dept on (emp.dept_id=dept.dept_id);

-- right join (left -> match all data and Right --> get match or unmatch data 
-- select all employee name and department name even department do have any employee.
select emp_name, dept_name from employee emp right join department dept on (emp.dept_id=dept.dept_id);

-- full join
CREATE TABLE RESULT (
    RESULT_ID INT PRIMARY KEY,
    RESULT_REMARKS ENUM('PASS', 'FAIL'),
    STUDENT_ID INT,
    CONSTRAINT fk_student
        FOREIGN KEY (STUDENT_ID)
        REFERENCES STUDENT(STUDENT_ID)
);

SELECT * FROM RESULT;
-- REMOVE FOREIGN KEY AND REMOVE STUDENT ID 
ALTER TABLE RESULT
DROP FOREIGN KEY fk_student;

ALTER TABLE RESULT DROP STUDENT_ID;
SELECT * FROM RESULT;

DROP TABLE RESULT;

SELECT * FROM STUDENT;
ALTER TABLE STUDENT ADD column RESULT_ID INT ;

-- FULL TABLE
select student_name,RESULT_REMARKS FROM STUDENT ST JOIN RESULT RE ON (ST.RESULT_ID=RE.RESULT_ID) ;

select student_name,RESULT_REMARKS FROM STUDENT ST JOIN RESULT RE ON (ST.STUDENT_ID=RE.STUDENT_ID) ;


-- full TABLE
SELECT c_name,p_name,brand,price ,order_date FROM customers inner JOIN  
orderinfo ON (customers.c_id =orderinfo.cust_id)
INNER JOIN product ON (orderinfo.product_id=product.p_id);


-- 3 TABLE JOIN
SELECT emp_name ,dept_name,city,pincode FROM employee inner JOIN department
ON (employee.dept_id=department.dept_id)
INNER JOIN location ON (department.location_id=location.location_id);

-- self join 
select * from employees;
SELECT
	concat(emp.FIRST_NAME,' ',emp.LAST_NAME)
    AS Employee,
    mang.FIRST_NAME AS Manager_Name
FROM employees emp
LEFT JOIN employees mang
    ON emp.MANAGER_ID = mang.EMPLOYEE_ID;
    
    
    