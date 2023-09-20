create table article(
    id serial primary key,
    title text not null,
    tag text not null
);

insert into article values (1, 'test', '001 002 003');
insert into article values (2, 'test2', '002 003 004');
insert into article values (3, 'test3', '003 004 005');


-- tagをtsvectorに変換し、tsqueryと比較する
select * from article 
where to_tsvector('english', tag) @@ to_tsquery('english', '001');