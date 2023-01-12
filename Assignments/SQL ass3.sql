Select o.ID,OrderDate,OrderNumber,o.CustomerId,TotalAmount 
from Orders o inner join Customer c on o.CustomerId=c.ID
Where c.Phone='8888888888'

Alter table Product add Category varchar(50)
Select * from Product Where Category='cosmetics'

Select o.ID,OrderDate,OrderNUmber,o.CustomerId,TotalAmount
from Orders o inner join Customer c on o.CustomerId=c.ID
Where c.City not in ('London')

Select o.ID,OrderDate,OrderNUmber,CuStomerId,TotalAmount
from Orders o join OrderItem i on o.ID=i.OrderId
join Product p on i.ProductId=p.ID
Where p.ProductName='sunscreen'

Select e.FirstName+LastName as EmployeeName,d.DepName
from employee e join Manager m on e.ManagerId=m.ID
join department d on d.ID=m.DepartmentId