/************************************************************
*  1. A SELECT statement that retrieves all the data from the
*  Invoices table
************************************************************/
SELECT * FROM invoices;

/************************************************************************
*  2. A SELECT statement that retrieves three columns from each row, sorted
* in descending sequence by invoice total.
************************************************************************/
SELECT invoice_number, invoice_date, invoice_total
FROM invoices
ORDER BY invoice_total DESC;

/************************************************************************
* 3. A SELECT statement that retrieves two columns and a calculated value
* for a specific invoice.
************************************************************************/
SELECT invoice_id, invoice_total,
       credit_total + payment_total AS total_credits
FROM invoices
WHERE invoice_id = 17;

/************************************************************************
* 4. A SELECT statement that retrieves all invoices between given dates
************************************************************************/
SELECT invoice_number, invoice_date, invoice_total
FROM invoices
WHERE invoice_date BETWEEN '2014-06-01' AND '2014-06-30'
ORDER BY invoice_date;

/************************************************************************
* 5. A SELECT statement that returns an empty result set
************************************************************************/
SELECT invoice_number, invoice_date, invoice_total
FROM invoices
WHERE invoice_total > 50000;
