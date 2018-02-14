/************************************************************************
* 1. The arithmetic operators in order of precedence
*************************************************************************
OPERATOR            NAME                        ORDER OF PRECEDENCE
*************************************************************************
    *               Multiplication              1
    /               Division                    1
   DIV              Integer division            1
  % (MOD)           Modulo (remainder)          1
    +               Addition                    2
    -               Subtraction                 2
*************************************************************************/


/************************************************************************
* 2. A SELECT statement that calculates the balance due.
************************************************************************/
SELECT invoice_total, payment_total, credit_total,
       invoice_total - payment_total - credit_total AS balance_due
FROM invoices;
/* 114 rows in set (0.00 sec) */


/************************************************************************
* 3. Use parentheses to control the sequence of operations
************************************************************************/
SELECT invoice_id,
       invoice_id + 7 * 3 AS multiply_first,
       (invoice_id + 7) * 3 AS add_first
FROM invoices;


/************************************************************************
* 3. Use the DIV and modulo operators
************************************************************************/
SELECT invoice_id,
       invoice_id / 3 AS decimal_quotient,
       invoice_id DIV 3 AS integer_quotient,
       invoice_id % 3 AS remainder
FROM invoices;
