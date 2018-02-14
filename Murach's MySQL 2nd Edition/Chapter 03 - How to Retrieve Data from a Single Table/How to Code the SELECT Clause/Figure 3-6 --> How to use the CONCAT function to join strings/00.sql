/************************************************************************
* 1. The syntax of the CONCAT function
************************************************************************/
CONCAT (string1 [, string2]...)


/************************************************************************
* 2. How to concatenate string data
************************************************************************/
SELECT vendor_city, vendor_state, CONCAT(vendor_city, vendor_state)
FROM vendors;
/* 122 rows in set (0.00 sec) */


/************************************************************************
* 3. How to format string data using literal values
************************************************************************/
SELECT vendor_name,
       CONCAT(vendor_city, ', ', vendor_state, ' ', vendor_zip_code)
            AS address
FROM vendors;
/* 122 rows in set (0.01 sec) */


/************************************************************************
* 3. How to include apostrophes in literal values
************************************************************************/
SELECT CONCAT(vendor_name, '''s Address: ') AS Vendor,
       CONCAT(vendor_city, ', ', vendor_state, ' ', vendor_zip_code)
            AS Address
FROM vendors;
/* Lo mismo que */
SELECT CONCAT(vendor_name, "'s Address: ") AS Vendor,
       CONCAT(vendor_city, ', ', vendor_state, ' ', vendor_zip_code)
            AS Address
FROM vendors;
/* 122 rows in set (0.01 sec) */
