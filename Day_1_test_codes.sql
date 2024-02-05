-- Count of records from the invoices table.

SELECT count(*) as 'number of records' FROM invoices;

-- Invoice records form vendor 123.

SELECT * FROM invoices WHERE vendor_id = 123;
SELECT count(*) FROM invoices WHERE vendor_id = 123;

