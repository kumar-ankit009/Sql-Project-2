SELECT * FROM northwind.products;
SELECT ProductName, QuantityPerUnit 
FROM Products;
SELECT ProductID, ProductName
FROM Products
WHERE Discontinued = "False"
ORDER BY ProductName;
SELECT ProductID, ProductName
FROM Products
WHERE Discontinued = 1 
ORDER BY ProductName;
SELECT ProductName, UnitPrice 
FROM Products 
ORDER BY UnitPrice DESC;
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE (((UnitPrice)<20) AND ((Discontinued)=False))
ORDER BY UnitPrice DESC;
SELECT ProductName, UnitPrice
FROM Products
WHERE (((UnitPrice)>=15 And (UnitPrice)<=25) 
AND ((Products.Discontinued)=False))
ORDER BY Products.UnitPrice DESC;
SELECT DISTINCT ProductName as Ten_Most_Expensive_Products, UnitPrice
FROM Products AS a
WHERE 10 >= (SELECT COUNT(DISTINCT UnitPrice)
FROM Products AS b
WHERE b.UnitPrice >= a.UnitPrice)
ORDER BY UnitPrice desc;
SELECT DISTINCT ProductName, UnitPrice
FROM Products
WHERE UnitPrice > (SELECT avg(UnitPrice) FROM Products)
ORDER BY UnitPrice;
SELECT Count(ProductName)
FROM Products
GROUP BY Discontinued;
SELECT ProductName,  UnitsOnOrder , UnitsInStock
FROM Products
WHERE (((Discontinued)=False) AND ((UnitsInStock)<UnitsOnOrder));