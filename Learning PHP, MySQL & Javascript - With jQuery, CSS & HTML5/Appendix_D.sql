/* APPENDIX D */

/* MySQL Functions */

-- STRING FUNCTIONS --
-- STRING FUNCTIONS --
-- STRING FUNCTIONS --
/* CONCAT(str1, str2, ...) */
SELECT CONCAT('My', 'S', 'QL');

/* CONCAT_WS(separator, str1, str2, ...) */
SELECT CONCAT_WS(', ', 'Truman', 'Harry', 'S');

/* LEFT(str, len) */
SELECT LEFT('Christopher Columbus', '6');

/* RIGHT(str, len) */
SELECT RIGHT('Christopher Columbus', '8');

/* MID(str, pos, len) */
SELECT MID('Christopher Columbus', '5', '4');

/* LENGTH(str) */
SELECT LENGTH('Mark Zuckerburg');