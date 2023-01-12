create database Aswitha

create table customer
(
  id int primary key,
  FirstName nvarchar(40) Not Null,
  LastName nvarchar(40),
  City nvarchar(40),
  Country nvarchar(40),
  Phone nvarchar(20)
)

create table orders
(
 Id int primary key,
 OrderDate datetime,
 OrderNumber nvarchar(10),
 CustomerId int,
 TotalAmount decimal(12,2)
)

alter table orders add constraint orders_CustomerId_FK
foreign key (CustomerId) references customer(Id)

create table orderitem
(
 Id int primary key,
 OrderId int,
 ProductId int,
 UnitPrice decimal(12,2),
 Quantity int,
)

create table product
( 
 Id int primary key,
 ProductName nvarchar(50),
 UnitPrice decimal(12,2),
 Package nvarchar(30),
 IsDiscontinued bit,
)

alter table orderitem add constraint orderitem_orderId_FK
foreign key (orderId) references orders(Id)

alter table orderitem add constraint orderitem_productid_FK
foreign key (productId) references product(Id)

alter table orderitem
drop constraint order_id

alter table orderitem
drop constraint product_id

alter table orderitem
drop constraint product_id_FK
alter table orderitem
drop constraint order_id_FK

SELECT COUNTRY FROM CUSTOMER WHERE COUNTRY LIKE 'A%' OR COUNTRY LIKE 'I%'

SELECT FIRSTNAME FROM CUSTOMER WHERE FIRSTNAME LIKE '__I%'