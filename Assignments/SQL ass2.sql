Select * from Customer Where Country='Germany'
Select FirstName+LastName from Customer 
Alter table Customer add FAX_number varchar(20)

Select * from Customer Where FAX_number is NOT NULL
Select * from Customer where FirstName LIKE '_U%' 
Select * from OrderItem where UnitPrice>10 AND UnitPrice<20

Create table Employee
(
ID int NOT NULL primary Key,
FirstName nvarchar(40) NOT NULL,
LastName nvarchar(40) NOT NULL,
ManagerId int Foreign key references Manager(ID),
Rating int NOT NULL,
JoiningDate datetime NOT NULL
)

Create table Manager
(
ID int NOT NULL primary key,
ManagerName nvarchar(40) NOT NULL,
DepartmentId int Foreign key references Department(ID)
)

Create table Department
(
ID int NOT NULL primary key,
DepName nvarchar(40) NOT NULL
)

Alter table Orders add ShippingDate datetime
Select * from Orders order by ShippingDate
Alter table Orders add ShippingName varchar(50)
Select * from Orders Where ShippingName='chandu' and ShippingDate between '2021-08-07' and '2021-09-11'
Alter table Product add Companyname varchar(50)
Select * from Product Where Companyname='ExoticLiquids'
Select Avg(Quantity) From OrderItem
Select o.ShippingName,p.Companyname from
Orders o join OrderItem i on o.ID=i.OrderId 
join Product p on i.ProductId=p.ID 
Where p.IsDiscontinued=0
select productid, avg(quantity) as average from orderitem
group by productid;
 
alter table orders
add shippingcompany varchar(30);
update orders set shippingcompany = 'FLIPKART'
where id = 1;
 
select shippingcompany, shipname from orders where shipname is not null;
 

alter table product
add category varchar(30);
 
update product set category ='portable'
where id =4;
 
alter table product
add discount int;
 
update product
set discount = 0
where id =5;
 
select productname, category, unitprice - discount as price from product;
 
select shippingcompany, totalamount as totalprice from orders
where shippingcompany like 'FLIPKART' and totalamount > 1000;


