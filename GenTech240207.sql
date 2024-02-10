--В рамках БД music:
--Создать таблицу комментариев (comments) с использованием механизма валидации данных в SQL

create table comments (
    id int auto_increment primary key,
    created_at timestamp default current_timestamp,
    content text not null,
    is_published bool default false,
    track_id int not null,
    author_id int not null,
    foreign key (author_id) references users(id),
    foreign key (track_id) references tracks(id)
);

--Добавить в таблицу комментариев несколько записей

insert into comments(content, track_id, author_id)
values
("comment1", 1, 3),
("comment2", 1, 4),
("comment3", 1, 1),
("comment4", 1, 2)

--Вывести ко-во комментариев на каждый трек (в упорядоченном виде)

select 
track_id,
count(*)
 from comments
group by track_id 
