 --1. Завершить описание схемы БД "соц/сеть" (юзеры, публикации, друзья)
 --https://dbdiagram.io/d/Copy-of-app_with_errors-65b7a314ac844320aef2beb9


--В рамках БД webshop создайте произвольную таблицу клиентов и добавьте несколько клиентов

create table Customers (
id int primary key auto_increment,
full_name varchar(128) not null,
created_at timestamp default current_timestamp,
country varchar(128)
)

insert into Customers(full_name, country)
values
("Ivan Petrov", "Germany"),
("Konstantin Sidorov", "France")s
