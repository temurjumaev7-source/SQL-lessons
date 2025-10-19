create database f44_SQL_homework_class_9
go
use f44_SQL_homework_class_9

select Productname,Suppliername
from Products
cross join Suppliers

select Departmentname,Name
from Departments
cross join Employees

select SupplierName,ProductName
from Products
join Suppliers
on Products.SupplierID = Suppliers.SupplierID

select FirstName,OrderID
from Orders
join Customers
on Customers.CustomerID = Orders.CustomerID

select Students.Name,CourseName
from Students
cross join Courses

select ProductName,OrderID
from products
join orders
on products.productID = orders.productID

select departments.DepartmentID,Name
from Departments
join Employees
on Departments.DepartmentID = Employees.DepartmentID

select Students.Name,CourseID
from Students
join Enrollments
on Students.StudentID = Enrollments.StudentID

select OrderID,ProductName
from orders
join Products
on Orders.ProductID = Products.ProductID
where Products.Price > 100

select Name,DepartmentName
from Employees
join Departments
on Employees.DepartmentID <> Departments.DepartmentID

select OrderID,ProductName,Quantity,StockQuantity
from orders
join Products
on Orders.ProductID = Products.ProductID
where Orders.Quantity > Products.StockQuantity;

select FirstName,ProductID
from Customers
join Sales
on Customers.CustomerID = Sales.CustomerID
where Sales.SaleAmount > 500

select Students.Name,CourseName
from Students
join Enrollments
on Students.StudentID = Enrollments.StudentID
join Courses
on Enrollments.CourseID = Courses.CourseID

select SupplierName,ProductName
from Suppliers
join Products
on Suppliers.SupplierID = Products.SupplierID
where Suppliers.SupplierName Like '%Tech%'

select orders.OrderID,TotalAmount,Amount
from Orders
join Payments
on Orders.OrderID = Payments.OrderID
Where Payments.Amount < Orders.TotalAmount

select ProductName,categories.CategoryName
from Products
join Categories
on Products.Category = Categories.CategoryID
where Categories.CategoryName like 'Electronics' or Products.Category like 'Furniture'

select FirstName + ' ' + LastName as [Full Name],Sales.saleID
from Customers
join Sales
on Customers.CustomerID = Sales.CustomerID
Where Customers.Country Like 'USA'

select FirstName + ' ' + LastName as [Full Name],Orders.OrderID
from Customers
join Orders
on Customers.CustomerID = Orders.CustomerID
Where Customers.Country Like 'Germany' and Orders.TotalAmount > 100

select PaymentID,ProductName
from Payments
join Orders
on Payments.OrderID = Orders.OrderID
join Products
on Products.ProductID = Orders.ProductID
Where Payments.Amount <> (Orders.Quantity * Products.Price)

select Students.Name
from Students
left join Enrollments
on Students.StudentID = Enrollments.StudentID
where Enrollments.CourseID is  null

select Customers.FirstName + ' ' + LastName as [Full Name]
from Customers
join Orders
on Customers.CustomerID = Orders.CustomerID
left join Payments
on Orders.OrderID = Payments.OrderID
 Where Payments.PaymentID is null

 SELECT employee.name AS employee_name, manager.name AS manager_name
FROM Employees AS employee
JOIN Employees AS manager ON employee.managerid = manager.employeeid
WHERE manager.salary <= employee.salary;

SELECT
    e1.Name AS Employee1Name,
    e1.DepartmentID AS Employee1Department,
    e2.Name AS Employee2Name,
    e2.DepartmentID AS Employee2Department
FROM
    Employees e1
JOIN
    Employees e2 ON e1.DepartmentID <> e2.DepartmentID
WHERE
    e1.EmployeeID < e2.EmployeeID
ORDER BY
    Employee1Department, Employee1Name, Employee2Department, Employee2Name;
