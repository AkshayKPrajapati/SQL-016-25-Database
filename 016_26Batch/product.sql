SELECT * FROM 016_26batch.product;

alter table product add column price int;

update product set price=100;