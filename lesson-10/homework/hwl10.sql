create database f44_SQL_homework_10
go
use f44_SQL_homework_10

select Employees.Name,Employees.Salary,Departments.DepartmentName from Employees
left join Departments
on Employees.DepartmentID = Departments.DepartmentID
where Employees.Salary > 50000

select Customers.FirstName,Customers.LastName,year(Orders.OrderDate) as OrderDate
from Customers
join Orders
on Customers.CustomerID = Orders.CustomerID
where year(Orders.OrderDate)  = 2023

select Employees.Name,Departments.DepartmentName from Employees
left join Departments
on Employees.DepartmentID = Departments.DepartmentID
where Departments.DepartmentID is null

select Suppliers.SupplierName,products.productName
from Suppliers
left join products
on Suppliers.SupplierID = products.SupplierID

select Orders.OrderID,Orders.OrderDate,Payments.PaymentDate,Payments.Amount
from Orders
full join Payments
on Orders.OrderID	=	Payments.OrderID

select emp.name as employee_name,man.name as manager_name from Employees as emp
left join employees as man
on emp.managerid = man.employeeID

select Students.Name,Courses.CourseName from Students
join Enrollments
on Enrollments.StudentID = students.StudentID
join Courses
on Enrollments.CourseID = Courses.CourseID
where courses.CourseName like '%Math 101%'

select Customers.FirstName,Customers.LastName,sum(Orders.Quantity) as quantity from Customers
left join Orders
on Customers.CustomerID = Orders.CustomerID
group by Customers.FirstName,Customers.LastName
having sum(Orders.Quantity) > 3

select Employees.Name,Departments.DepartmentName from Employees
left join departments
on Employees.DepartmentID = Departments.DepartmentID
where Departments.departmentName like 'Human Resources'

select departments.DepartmentName, COUNT(Employees.EmployeeID) as EmployeeCount from	Employees
left join departments
on Employees.DepartmentID = departments.DepartmentID
group by departments.DepartmentName
having COUNT(Employees.EmployeeID) > 5

select Products.ProductID,Products.ProductName from Products
left join sales
on Products.ProductID = sales.ProductID
where sales.SaleAmount is null

select Customers.FirstName,Customers.LastName,COUNT(orders.OrderID) as TotalOrders from Customers
left join Orders
on Customers.CustomerID = Orders.CustomerID
group by Customers.FirstName,Customers.LastName
having COUNT(orders.OrderID) >= 1

select Employees.Name,Departments.DepartmentName from Employees
right join Departments
on Employees.DepartmentID = Departments.DepartmentID

select emp.name as employee1,emp1.name as Employee2, Emp1.ManagerID from Employees as emp
join  Employees as emp1
on emp.ManagerID = emp1.ManagerID
and emp.EmployeeID < emp1.EmployeeID


select orders.orderID,year(Orders.OrderDate) as OrderDate, Customers.FirstName,Customers.LastName from Customers
join Orders
on Customers.CustomerID = Orders.CustomerID
where year(Orders.OrderDate)  = 2022

select Employees.Name,Employees.Salary,departments.departmentName from Employees
left join departments
on Employees.DepartmentID = Departments.departmentID
where employees.salary > 60000

select orders.orderID,orders.Orderdate,payments.paymentdate,payments.amount from orders
join payments
on orders.orderid = payments.orderid

select Products.ProductID,Products.ProductName from Products
left join orders
on Products.ProductID = orders.ProductID
where orders.orderid is null

select Employees.Name,Employees.DepartmentID, Employees.Salary from Employees
where Employees.Salary > (select AVG(employees2.salary) from Employees as employees2
where Employees2.DepartmentID = Employees.DepartmentID)

select orders.orderID,orders.orderdate as Orderdate from orders
left join payments
on orders.orderID = payments.orderid
where orders.orderdate < '2020-01-01' and payments.Paymentid is null

select products.productid,products.productname from products
left join Categories
on products.Category = categories.categoryID
where categories.categoryID is null

select emp.name as employee1,emp1.name as Employee2, Emp1.ManagerID,Emp1.salary from Employees as emp
join  Employees as emp1
on emp.ManagerID = emp1.ManagerID
and emp.EmployeeID < emp1.EmployeeID
where emp1.salary > 60000

select employees.name,departments.departmentname from employees
join departments
on employees.departmentid = departments.departmentid
where employees.name like 'M%'

select sales.saleid,products.productname,sales.SaleAmount from sales
left join products
on sales.productid = products.productid
where sales.SaleAmount > 500

select Students.studentID, Students.name,courses.coursename from Students
join Enrollments
on Enrollments.StudentID = students.StudentID
join Courses
on Enrollments.CourseID = Courses.CourseID
where courses.coursename <> 'Math 101'

select orders.orderID,orders.orderdate as Orderdate,payments.paymentID from orders
left join payments
on orders.orderID = payments.orderid
where payments.paymentID is null

select Products.ProductID,Products.ProductName,Categories.CategoryName from products
right join Categories
on Products.category = categories.categoryID
where categories.categoryName in('Electronics','Furniture')


