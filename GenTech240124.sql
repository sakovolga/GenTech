--1. Вывести заказы со стоимостью от 5000 EUR (проекция: номер_заказа, стоимость_заказа)

SELECT OrderDetails.OrderID,
sum(OrderDetails.Quantity * Products.Price) as cost
FROM OrderDetails
join Products on OrderDetails.ProductID = Products.ProductID
group by OrderDetails.OrderID
having cost >= 5000

--2. Вывести страны, в которые было отправлено 3 и более заказов

SELECT 
Customers.Country,
count(*) as countity
FROM Orders
join Customers on Orders.CustomerID = Customers.CustomerID
group by Customers.Country
having countity >=3

--3. Вывести ТОП-10 самых продаваемых товаров (проекция: название_товара, ко_во_проданных_единиц)

SELECT Products.ProductName,
OrderDetails.Quantity
FROM OrderDetails
join Products on Products.ProductID = OrderDetails.ProductID
order by OrderDetails.Quantity desc
limit 10

--4. Расчитать З/П менеджеров (ставка - 5% от суммы проданных заказов)

SELECT Employees.EmployeeID,
sum(OrderDetails.Quantity * Products.Price) * 0.05 as salary 
FROM Orders
join OrderDetails on Orders.OrderID = OrderDetails.OrderID
join Employees on Employees.EmployeeID = Orders.EmployeeID
join Products on Products.ProductID = OrderDetails.ProductID
group by Employees.EmployeeID

