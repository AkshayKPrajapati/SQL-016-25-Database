use orm;

create table book (
	bookId int not null,
    bookName varchar(150),
    authorName varchar(150)
);
select*from book;