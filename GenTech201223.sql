(1) Вывести данные о товарах (проекция: названиетовара, цена, названиекатегории, названиекомпаниипоставщика)

SELECT 
	Products.ProductName,
   	Products.Price,
    	Categories.CategoryName,
    	Suppliers.SupplierName
FROM 
	Products
JOIN 
	Categories ON Products.CategoryID = Categories.CategoryID
JOIN
	Suppliers ON Products.SupplierID = Suppliers.SupplierID
	


(2) Вывести список стран, которые поставляют морепродукты

SELECT 
	Suppliers.Country
FROM 
	Products
JOIN 
	Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE 
	Products.CategoryID = 8	
	
	
	
(3) Вывести два самых дорогих товара из категории Beverages из USA

SELECT 
	Products.ProductName
FROM 
	Products
JOIN 
	Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE 
	Products.CategoryID = 1	
AND
    	Suppliers.Country = "USA"
ORDER BY 
	Products.Price DESC
LIMIT 2



(4) Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT 
	Products.ProductName,
	Products.Price * 1.08 AS Price_USD
FROM 
	OrderDetails
JOIN 
	Products ON Products.ProductID = OrderDetails.ProductID
ORDER BY 
	Products.Price DESC
LIMIT 1



(5) Дайте короткий ответ на вопрос: в чем отличие БД от СУБД

БД - хранилище данных.
СУБД - ПО, предназначенное для работы с данными в БД: для записи, чтения, изменения и удаления данных.

