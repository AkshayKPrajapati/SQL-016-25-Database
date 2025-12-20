use orm;

create table books(
	bookId int auto_increment primary key not null,
    bookName varchar(255) not null,
    bookAuthor varchar (255),
    bookDescription varchar (255)
);

ALTER table books add COLUMN bookPrice int ;
select * from orm.books;
