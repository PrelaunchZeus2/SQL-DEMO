USE PACKT_ONLINE_SHOP;
CREATE TABLE OrderItems
(
OrderItemID INT NOT NULL AUTO_INCREMENT,
OrderID INT NOT NULL,
ProductID INT NOT NULL,
Quantity INT NOT NULL,
UnitPrice DECIMAL(10, 2) NOT NULL,
Discount DECIMAL(10, 2) NULL,
Notes VARCHAR(750) NULL,
PRIMARY KEY (OrderItemID)
);
ALTER TABLE OrderItems
ADD FOREIGN KEY (ProductID) REFERENCES Products(ProductID);
-- ALTER TABLE OrderItems
-- DROP FOREIGN KEY ProductID

DROP DATABASE IF EXISTS employeedemo;
CREATE DATABASE employeedemo;

USE employeedemo;
CREATE TABLE department
(
dno INT PRIMARY KEY,
dname VARCHAR(30) UNIQUE NOT NULL,
dlocation VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE employee
(
eno CHAR(4) PRIMARY KEY,
ename VARCHAR(30) NOT NULL,
job VARCHAR(30) NOT NULL,
manager CHAR(4),
jdate TIMESTAMP NOT NULL,
gender CHAR(1) CONSTRAINT gender_chk
CHECK (gender IN('M', 'F', 'O')),
salary DECIMAL(8, 2) DEFAULT 0,
deptno INT NOT NULL,
	FOREIGN KEY (deptno) REFERENCES department(dno)
);
USE PACKT_ONLINE_SHOP;
CREATE TABLE Orders
(
OrderItemID INT NOT NULL AUTO_INCREMENT,
OrderID INT NULL,
ProductID INT NOT NULL,
Quantity INT NOT NULL,
UnitPric DECIMAL(10,2) NULL,
Notes Varchar(750) NULL,
PRIMARY KEY (OrderItemID)
);
CREATE TABLE OrderItems
(
OrderID INT NOT NULL AUTO_INCREMENT,
CustomerIID INT NOT NULL,
OrderNumber CHAR(50) NOT NULL,
OrderDate DATETIME NOT NULL,
ShipmentDate DATETIME NOT NULL,
OrderStatus CHAR(10) NULL,
Notes VARCHAR(750) NULL,
PRIMARY KEY (OrderrID)
);

-- Foreign Key
ALTER TABLE OrderItems
ADD FOREIGN KEY (OrderID) REFERENCES orders(OrderID);
