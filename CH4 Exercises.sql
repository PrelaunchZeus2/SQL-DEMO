use PACKT_ONLINE_SHOP;
SELECT FirstName AS 'First Name', LastName as 'LastName', Phone as 'Phone Number'
FROM Customers;

SELECT ProductName, NetRetailPrice 
FROM Products
ORDER BY NetRetailPrice DESC
LIMIT 5;

SELECT ProductName as 'Product Name', NetRetailPrice as 'Product Retail Price', AvailableQuantity as 'Available Quantity', AvailableQuantity * NetRetailPrice as 'Total Price of Available Quantity'
FROM Products
ORDER BY NetRetailPrice Desc
LIMIT 5;
