use PACKT_ONLINE_SHOP;
CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductCatgoryID INT NOT NULL,
SupplierID INT NOT NULL,
ProductName CHAR(50) NOT NULL,
NetRetailPrice DECIMAL(10, 2) NOT NULL,
AvailableQuantity INT NOT NULL,
WholesalePrice DECIMAL(10, 2) NOT NULL,
UnitKGWeight DECIMAL(10, 5) NULL,
Notes VARCHAR(750) NULL
);

INSERT INTO Products (ProductID, ProductCategoryID, SupplierID, ProductName, NetRetailPrice, AvailablQuantiity,
WholesalePrice, UnitKGWeight, Notes )
VALUES 
(1,	5,	2,	'Calculatre',	24.99,	100,	17.99,	1,	'calculation application'),
(2,	5,	5,	'Penwrite',	79.99,	27,	49.99,	2,	'word processing product'),
(3,	1,	6,	'Vortex Generator',	2,499.99,	1000,	1,999.99,	0.01,	'space engine component'),
(4,	1,	6,	'The Gourmet Crockpot',	24.99,	72,	19.99,	1.63,	'cookbook'),
(5,	1,	6,	'Government Accounting',	14.99,	26,	9.99,	1.22,	'government accounting book'),
(6,	3,	6,	'habanero peppers',	4.49,	189,	2.99,	0.009,	'hot peppers'),
(7,	2,	1,  '10-mm socket wrench',	3.49,	39,	1.89,	0.018,	'important tool'),
(8,	3,	4,	'tomato sauce',	1.19,	1509,	0.89,	0.232,	'bottled in glass'),
(9,	1,	6,	'pure vanilla',	10.39,	1509,	7.89,	0.032,	'high-quality vanilla'),
(10,3,	2,	'keyboard wrench',	399,999.95,	6128,	149,999.99,	521.38,	'handle with care'),
(11,	2,	1,	'power cell',	47.89,	2346,	29.99,	0.298,	'ten amp-hours per cell');

CREATE TABLE FoodProducts
(
ProductID INT NOT NULL AUTO_INCREMENT,
ProductCategoryID INT NOT NULL DEFAULT 1,
SupplierID INT NOT NULL DEFAULT 1,
ProductNam CHAR(50) NOT NULL,
NetRetailPrice DECIMAL(10, 2) NULL DEFAULT 5.99,
AvailableQuantity INT NOT NULL,
WholesalePrice DECIMAL(10, 2) NOT NULL DEFAULT 3.99,
UnitKGWeight DECIMAL(10, 5) NULL,
Notes VARCHAR(750) NULL,
PRIMARY KEY (ProductID)
);

insert into FoodProducts( ProductName, AvailableQuantity, UnitKGWeight, Notes)
values ('Pancake batter', 50, 0.25, 'Contains Eggs'),
('Breakfast Cereal', 10, 0.25, 'Add Milk'),
('Siracha sauce', 10, 0.25, 'Spicey');

select * from foodProducts;



