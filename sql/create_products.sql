create table products (
    product_id int primary key,
    product_name text not null,
    price int not null
);

insert into products values (101, 'phone', 70000);
insert into products values (102, 'cable', 2000);
insert into products values (103, 'case', 7000);
insert into products values (104, 'film', 1500);