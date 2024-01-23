1. Вывести сред/стоимость товаров из категорий 1, 2, 5, у которых название начинается с буквы t

SELECT avg(Price) as avg_price
FROM Products
where ProductName like 't%' and
CategoryID in (1, 2, 5)

2. Посчитать стоимость заказа 10248

SELECT
sum(Products.Price * OrderDetails.Quantity) as Cost
FROM OrderDetails
join Products on OrderDetails.ProductID = Products.ProductID
where OrderID = 10248

3. Вывести ко-во товаров с ценой от 10 до 250 EUR

SELECT count(*)
FROM Products
where price between 10 and 250

4. Вывести сумму, на которую было отправлено товаров клиентам в Germany

SELECT sum(Products.Price * OrderDetails.Quantity) as Cost
FROM Orders
join OrderDetails on Orders.OrderID = OrderDetails.OrderID
join Customers on Orders.CustomerID = Customers.CustomerID
join Products on Products.ProductID = OrderDetails.ProductID
where
Customers.Country = 'Germany'

С помощью инструмента онлайн-проектирования опишите схему БД "чат поддержки" (базовые сущности и характеристики)

https://dbdiagram.io/d/65aff9deac844320ae8e6662
