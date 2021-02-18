-- Lab 1: SQLite with Chinook Database
-- 1
SELECT FirstName, LastName, Email
FROM Employee;

-- 2
SELECT ArtistId, Name
FROM Artist;

-- 3 (?)
SELECT Title
FROM Employee
WHERE Title LIKE 'Manager';

-- 4 (?)
SELECT MAX(UnitPrice * Quantity)
FROM InvoiceLine;

SELECT MIN(UnitPrice * Quantity)
FROM InvoiceLine;

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

-- 10 (?)
SELECT InvoiceLineId, InvoiceId, Track.TrackId
FROM InvoiceLine
INNER JOIN Track
ON InvoiceLine.InvoiceId = Track.TrackId;