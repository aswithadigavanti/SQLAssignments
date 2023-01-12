Select sum(p.UnitPrice), o.ShippingName 
 from Product p inner join OrderItem i on p.ID=i.ProductId
 inner join Orders o on i.OrderId=o.ID
 Where p.CompanyName='ExoticLiquids' and p.UnitPrice>50 Group by o.ShippingName
Select * from Employee Where JoiningDate in(select min(JoiningDate) from Employee)
Select * from Employee Where JoiningDate in(select max(JoiningDate) from Employee)
Select ProductName,UnitPrice from Product where UnitPrice in ((Select Max(UnitPrice) From Product),
(Select min(UnitPrice) from Product))
Alter table Product add UnitStock int
  Alter table Product add Unitonorder int
  Select * from Product Where UnitStock is null
Select * from Product Where UnitStock < Unitonorder
Select c.Firstname,i.OrderId,o.OrderDate 
 from Customer c join Orders o on c.Id=o.CustomerId
 join OrderItem i on o.ID=i.OrderId
Select o.CustomerId from Orders o join Customer c 
on c.ID=o.CustomerId
Where FirstName LIKE '%AR%'
Select SUBSTRING(CompanyName,1,3) as firstword from Product