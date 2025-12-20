use orm;

CREATE TABLE student (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    city VARCHAR(150),
    mark INT
);

select * from student;


insert into student(
	id,name,city,mark
)
value(
1,'Aarush','Pune',85
); 
