SELECT name,Composer,Milliseconds from tracks

SELECT FirstName,LastName,Address, City from customers

SELECT name, Milliseconds,Composer from tracks
WHERE Composer is null and Milliseconds > 2900000

SELECT LastName, FirstName,Company from customers
WHERE Company is NOT NULL 

SELECT DISTINCT BillingCity FROM invoices
WHERE BillingState is NOT NULL
ORDER by BillingState DESC

SELECT DISTINCT Title FROM albums
WHERE Title like "%of%" 
ORDER by Title ASC

SELECT t.name, g.name FROM tracks t
JOIN genres g on t.GenreId 

SELECT t.name,a.Title FROM tracks t
JOIN albums a on t.AlbumId =  a.AlbumId
ORDER by a.Title DESC
  
  