-- Lab 1: SQLite with Chinook Database
-- 1
SELECT FirstName, LastName, Email
FROM Employee;

-- 2
SELECT *
FROM Artist;

-- 3
SELECT FirstName, LastName, Title
FROM Employee
WHERE Title LIKE '%Manager%';

-- 4
SELECT MAX(Total), MIN(Total)
FROM Invoice;

-- 5
SELECT BillingAddress, BillingCity, BillingPostalCode, Total
FROM Invoice
WHERE BillingCountry = 'Germany';

-- 6
SELECT BillingAddress, BillingCity, BillingPostalCode, Total
FROM Invoice
WHERE Total >= '15' AND Total <= '25';

-- 7
SELECT DISTINCT BillingCountry
FROM Invoice;

-- 8
SELECT CustomerId, FirstName, LastName, Country
FROM Customer
WHERE Country != 'USA';

-- 9
SELECT CustomerId, FirstName, LastName, Country
FROM Customer
WHERE Country == 'Brazil';

-- 10 Provide a query that includes the track name with each invoice line item and sort by track name
SELECT *
FROM Track
LEFT JOIN InvoiceLine
ON Track.TrackId = InvoiceLine.TrackId
ORDER BY Track.Name;