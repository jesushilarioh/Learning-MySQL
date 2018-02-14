/************************************************************************
* 1. A SELECT statement that renames the columns in the result set
************************************************************************/
SELECT invoice_number AS "Invoice Number", invoice_date AS Date,
       invoice_total AS total
FROM invoices;
/* (114 rows) */


/************************************************************************
* 2. A SELECT statement that doesn't name a calculated column
************************************************************************/
SELECT invoice_number, invoice_date, invoice_total,
       invoice_total - payment_total - credit_total
FROM invoices;
/* (114 rows) */
