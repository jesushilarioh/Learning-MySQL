/************************************************************************
* 1. The syntax of the LEFT, DATE_FORMAT, and ROUND functions
************************************************************************/
LEFT(string, number_of_characters)
DATE_FORMAT(date, format_string)
ROUND(number[, number_of_decimal_places])


/************************************************************************
* 2. A SELECT statement that uses the LEFT function
************************************************************************/
SELECT vendor_contact_first_name, vendor_contact_last_name,
    CONCAT(LEFT(vendor_contact_first_name, 1),
    LEFT(vendor_contact_last_name, 1)) AS initials
FROM vendors;
/* 122 rows in set (0.00 sec) */


/************************************************************************
* 3. A SELECT statement that uses the DATE_FORMAT function 
************************************************************************/
