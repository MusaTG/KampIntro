--Select
--ANSII
Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers

Select * from Customers Where City='London'

--case insensitive
select * from Products where CategoryID=1 or CategoryID=3

select * from Products where CategoryID=1 and UnitPrice>10

select * from Products order by categoryId,ProductName

select * from Products where CategoryID=1 order by UnitPrice desc --asc --ascending --descending

select count(*) UrunSayisi from Products where CategoryID=2

select categoryId,count(*) UrunSayisi from Products where UnitPrice>20 group by CategoryID having count(*)<10

select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName
from Products inner join Categories
on Products.CategoryID=Categories.CategoryID
where Products.UnitPrice>10
--inner join, left join, right join
--DTO Data Transformation Object
select* from Products p inner join [Order Details] od
on p.ProductID=od.ProductID
inner join Orders o
on od.OrderID=o.OrderID

select * from Customers c left join Orders o 
on c.CustomerID=o.CustomerID
where o.CustomerID is null