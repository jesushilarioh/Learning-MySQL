/************************************************
 * 1. The basic syntax of the SELECT statement    *
 ************************************************/
SELECT select_list
[FROM table_source]
[WHERE search_condition]
[ORDER BY order_by_list]
[LIMIT row_limit]

/*************************************************************************
* 2. THE FIVE CLAUSES OF THE SELECT STATEMENT
**************************************************************************
Clause      Description
**************************************************************************
SELECT      Describes the columns in the result set.
FROM        Names the base table from which the query retrieves the data.
WHERE       Specifies the conditions that must be met for a row to be
            included in the result set.
ORDER BY    Specifies how to sort the rows in the result set.
LIMIT       Specifies the number of rows to return.
**************************************************************************/
