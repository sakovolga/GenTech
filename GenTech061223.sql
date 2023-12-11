Типовые бизнес-процессы для предметной области ВИДЕО-ХОСТИНГ (Youtube), а также их соответствие по CRUD.
1. Просмотр видео - READ
2. Проставление лайка - CREATE
3. Регистрация нового аккаунта - CREATE
4. Добавление видео - CREATE
5. Удаление аккаунта - UPDATE
6. Удаление видео - UPDATE
7. Подписка на канал - CREATE
8. Просмотр истории - READ
9. Отменить подписку на канал - UPDATE
10. Отправка жалобы на видео - CREATE


Вывести название и стоимость товаров от 20 до 150 EUR
    SELECT ProductName, Price
    FROM Products
    WHERE Price >= 20 AND Price <= 150

Вывести страны поставщиков, кроме тех, что из USA
    SELECT Country
    FROM Suppliers
    WHERE Country != "USA"

Вывести перевозчика с ID 1
    SELECT * FROM Shippers
    WHERE ShipperID = 1

Вывести контактные имена клиентов, кроме тех, что из France и USA
    SELECT ContactName
    FROM Customers
    WHERE Country != "France"
    AND Country != "USA"

Вывести страну, город и адрес всех поставщиков, кроме тех, что из Japan и Brazil
    SELECT Country, City, Address
    FROM Suppliers
    WHERE Country != "Japan"
    AND Country != "Brazil"

