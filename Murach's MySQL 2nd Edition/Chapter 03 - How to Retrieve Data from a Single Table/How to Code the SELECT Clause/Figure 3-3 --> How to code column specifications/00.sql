/************************************************************************
* 1. The expanded syntax of the SELECT clause
************************************************************************/
SELECT [ALL|DISTINCT]
        column_specification [[AS] result_column]
    [,  column_specification [[AS] result_column]] ...


/************************************************************************
* 2. Four ways to code column specifications
*************************************************************************
SOURCE              OPTION                      SYNTAX
*************************************************************************
Base table value    All columns                 *
                    Column name                 column_name
Calculated value    Result of a calculation     Arithmetic expressions
                    Result of a function        Functions
*************************************************************************/


/************************************************************************
* 3. Column specifications that use base table values
************************************************************************/
/* The * is used to retrieve all columns */
SELECT *
/* Column names are used to retrieve specific columns */
SELECT vendor_name, vendor_city, vendor_state


/************************************************************************
* 4. Column specifications that use calculated values
************************************************************************/
/* An arithmetic expression that calculates tha balance due */
SELECT invoice_total - payment_total - credit_total AS balance_due

/* A fuction that returns the full name */
SELECT CONCAT(first_name, ' ', last_name) AS full_name
