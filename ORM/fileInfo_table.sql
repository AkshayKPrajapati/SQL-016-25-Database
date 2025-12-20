Use orm;

create table fileInfo(
	id int primary key auto_increment not null,
    fileName varchar(255),
    filePath varchar(255)

);


 -- if i want to remove data then use this query
TRUNCATE TABLE orm.fileinfo;