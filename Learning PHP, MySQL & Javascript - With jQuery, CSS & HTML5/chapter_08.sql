SHOW DATABASES;
CREATE DATABASE publications;
USE publications;

/* Create user */
CREATE USER 'james'@'localhost' IDENTIFIED BY 'james';
/* Grant user privileges */
GRANT ALL PRIVILEGES ON publications.* TO 'james'@'localhost';

/* Create table called classics */
DROP TABLE classics;
CREATE TABLE classics (
	author VARCHAR(128),
    title VARCHAR(128),
    type VARCHAR(16),
    year CHAR(4)) ENGINE MyISAM;
    
/* Check if new table has been created */
DESCRIBE classics;

/* Add an auto-incrementing column id */
ALTER TABLE classics ADD id INT UNSIGNED NOT NULL AUTO_INCREMENT KEY;

/* Popular Option: Adding the auto-incrementing id column at table creation */
DROP TABLE classics;
CREATE TABLE classics (
	author VARCHAR(128),
    title VARCHAR(128),
    type VARCHAR(16),
    year CHAR(4),
    id INT UNSIGNED NOT NULL AUTO_INCREMENT KEY) ENGINE MyISAM;
    
/* Check if new table has been created */
DESCRIBE classics;

/* Removing the id column */
ALTER TABLE classics DROP id;

/* Check if new table has been created */
DESCRIBE classics;

/* Populating the 'classics' table */
INSERT INTO classics (author, title, type, year)
	VALUES ('Mark Twain', 'The adventures of Tom Sawyer', 'Fiction', '1876');
INSERT INTO classics (author, title, type, year)
	VALUES ('Jane Austen', 'Pride and Prejudice', 'Fiction', '1811');
INSERT INTO classics (author, title, type, year)
	VALUES ('Charles Darwin', 'The Origin of Species', 'Non-Fiction', '1856');
INSERT INTO classics (author, title, type, year)
	VALUES ('Charles Dickens', 'The Old Curiosity Shop', 'Fiction', '1841');
INSERT INTO classics (author, title, type, year)
	VALUES ('William Shakespeare', 'Romeo and Juliet', 'Play', '1594');

/* Display 'classics' table contents */
SELECT * FROM classics; 


/* Renaming'classics' table to 'pre1900' */
ALTER TABLE classics RENAME pre1900;
/* Display 'pre1900' table contents */
SELECT * FROM pre1900; 


/* Renaming 'pre1900' table to 'classics' */
ALTER TABLE pre1900 RENAME classics;
/* Display 'classics' table contents */
SELECT * FROM classics; 


/* Changing the data type of a column 'year' */
ALTER TABLE classics MODIFY year SMALLINT;
/* Show changes in table columns */
DESCRIBE classics;


/* Adding a new column 'pages' */
ALTER TABLE classics ADD pages SMALLINT UNSIGNED;
/* Show changes in table columns */
DESCRIBE classics;


/* Renaming a column 'type'  to 'category' */
ALTER TABLE classics CHANGE type category VARCHAR(16);
/* Show changes in table columns */
DESCRIBE classics;


/* Removing a column 'pages' */
ALTER TABLE classics DROP pages;
/* Show changes in table columns */
DESCRIBE classics;


/* Deleting a table 'disposable table' */
/* create table to be deleted 'disposable table' with 1 row 'trash' */
CREATE TABLE disposable_table (trash int);
/* Show tables */
SHOW TABLES;
/* Show changes in table columns */
DESCRIBE disposable_table;
/* Delete table 'disposable_table' */
DROP TABLE disposable_table;
/* Show tables */
SHOW TABLES;


/* Example 8-10. Adding indexes to a table 'classics' */
ALTER TABLE classics ADD INDEX (author(20));
ALTER TABLE classics ADD INDEX (title(20));
ALTER TABLE classics ADD INDEX (category(4));
ALTER TABLE classics ADD INDEX (year);
/* Show changes in table columns */
DESCRIBE classics;
/* Using CREATE INDEX instead of ALTER TABLE */
/* Note: CREATE INDEX does not work when creating primary keys */

/* Example 8-11. These two commands are equvalent */
-- ALTER TABLE classics ADD INDEX (author(20));
-- CREATE INDEX author ON classics (author(20));



/* Example 8-12. Creating a table 'classics' with indexes */
DROP TABLE classics;
CREATE TABLE classics (
	author VARCHAR(128),
    title VARCHAR(128),
    category VARCHAR(16),
    year SMALLINT,
    -- Create indexes here:
    INDEX (author(20)),
    INDEX (title(20)),
    INDEX (category(4)),
    INDEX (year)) ENGINE MyISAM;
    
/* Show changes in table columns */
DESCRIBE classics;

/* Populating the 'classics' table */
INSERT INTO classics (author, title, category, year)
	VALUES ('Mark Twain', 'The adventures of Tom Sawyer', 'Fiction', '1876');
INSERT INTO classics (author, title, category, year)
	VALUES ('Jane Austen', 'Pride and Prejudice', 'Fiction', '1811');
INSERT INTO classics (author, title, category, year)
	VALUES ('Charles Darwin', 'The Origin of Species', 'Non-Fiction', '1856');
INSERT INTO classics (author, title, category, year)
	VALUES ('Charles Dickens', 'The Old Curiosity Shop', 'Fiction', '1841');
INSERT INTO classics (author, title, category, year)
	VALUES ('William Shakespeare', 'Romeo and Juliet', 'Play', '1594');

/* Display 'classics' table contents */
SELECT * FROM classics; 

 /* Example 8-13. Populating 'isbn' column with data and adding a PRIMARY KEY */
ALTER TABLE classics ADD isbn CHAR(13);
UPDATE classics SET isbn = '9781598184891' WHERE year = '1876';
UPDATE classics SET isbn = '9780582506206' WHERE year = '1811';
UPDATE classics SET isbn = '9780517123201' WHERE year = '1856';
UPDATE classics SET isbn = '9780099533474' WHERE year = '1841';
UPDATE classics SET isbn = '9780192814968' WHERE year = '1594';
ALTER TABLE classics ADD PRIMARY KEY (isbn);

/* Show changes in table columns */
DESCRIBE classics;
/* Display 'classics' table contents */
SELECT * FROM classics; 



/* Adding a primay key to an exsiting table 'classics'. If table 'classics' is NOT already popuated*/
DROP TABLE classics;
CREATE TABLE classics (
	author VARCHAR(128),
    title VARCHAR(128),
    category VARCHAR(16),
    year SMALLINT,
    -- Create indexes here:
    INDEX (author(20)),
    INDEX (title(20)),
    INDEX (category(4)),
    INDEX (year)) ENGINE MyISAM;

/* Adding a primay key to an exsiting table 'classics' */
ALTER TABLE classics ADD isbn CHAR(13) PRIMARY KEY; -- WILL NOT WORK! if table 'classics' is already popuated. Otherwise, will work.

/* Show changes in table columns */
DESCRIBE classics;

/* Populating the 'classics' table with isbns */
INSERT INTO classics (author, title, category, year, isbn)
	VALUES ('Mark Twain', 'The adventures of Tom Sawyer', 'Fiction', '1876', '9781598184891');
INSERT INTO classics (author, title, category, year, isbn)
	VALUES ('Jane Austen', 'Pride and Prejudice', 'Fiction', '1811', '9780582506206');
INSERT INTO classics (author, title, category, year, isbn)
	VALUES ('Charles Darwin', 'The Origin of Species', 'Non-Fiction', '1856', '9780517123201');
INSERT INTO classics (author, title, category, year, isbn)
	VALUES ('Charles Dickens', 'The Old Curiosity Shop', 'Fiction', '1841', '9780099533474');
INSERT INTO classics (author, title, category, year, isbn)
	VALUES ('William Shakespeare', 'Romeo and Juliet', 'Play', '1594', '9780192814968');

/* Display 'classics' table contents */
SELECT * FROM classics; 

/* Example 8-14. Creating the table 'classics' with a primary key */
DROP TABLE classics;
CREATE TABLE classics (
	author VARCHAR(128),
    title VARCHAR(128),
    category VARCHAR(16),
    year SMALLINT,
    isbn CHAR(13),
    INDEX (author(20)),
    INDEX (title(20)),
    INDEX (category(4)),
    INDEX (year),
    PRIMARY KEY (isbn)) ENGINE MyISAM;
    
/* Show  table columns */
DESCRIBE classics;

/* Populating the 'classics' table with isbns */
INSERT INTO classics (author, title, category, year, isbn)
	VALUES ('Mark Twain', 'The adventures of Tom Sawyer', 'Fiction', '1876', '9781598184891');
INSERT INTO classics (author, title, category, year, isbn)
	VALUES ('Jane Austen', 'Pride and Prejudice', 'Fiction', '1811', '9780582506206');
INSERT INTO classics (author, title, category, year, isbn)
	VALUES ('Charles Darwin', 'The Origin of Species', 'Non-Fiction', '1856', '9780517123201');
INSERT INTO classics (author, title, category, year, isbn)
	VALUES ('Charles Dickens', 'The Old Curiosity Shop', 'Fiction', '1841', '9780099533474');
INSERT INTO classics (author, title, category, year, isbn)
	VALUES ('William Shakespeare', 'Romeo and Juliet', 'Play', '1594', '9780192814968');
    
/* Display 'classics' table contents */
SELECT * FROM classics; 


/* Example 8-15. Adding a FULLTEXT index to the table classics */
ALTER TABLE classics ADD FULLTEXT(author, title);
/* Show changes in table columns 'author' and 'title' */
DESCRIBE classics;

/* (QUERYING A MYSQL DATABASE) */
/* (QUERYING A MYSQL DATABASE) */
/* (QUERYING A MYSQL DATABASE) */
-- SELECT --
/* Example 8-16. Two different SELECT statements */
SELECT author, title FROM classics; -- 5 row(s) returned
SELECT title, isbn FROM classics;	 -- 5 row(s) returned

-- SELECT COUNT --
/* Example 8-17. Counting rows */
SELECT COUNT(*) FROM classics; -- 1 row(s) returned


/* Example 8-18. Duplicating data */
INSERT INTO classics (author, title, category, year, isbn)
	VALUES ('Charles Dickens', 'Little Dorrit', 'Fiction', '1857', '9780141439960'); -- Notice different isbn

-- SELECT DISTINCT --
/* Example 8-19. With and without the DISTINCT qualifier */
SELECT author FROM classics;
SELECT DISTINCT author FROM classics;

/* Example 8-19. With and without the DISTINCT qualifier */
SELECT author FROM classics; -- 7 row(s) returned --
SELECT DISTINCT author FROM classics; -- 6 row(s) returned --

-- DELETE --
/* Example 8-20. Removing the new entry */
DELETE FROM classics WHERE title = 'Little Dorrit'; -- 2 row(s) affected --
/* Display 'classics' table contents */
SELECT * FROM classics; 

-- WHERE --
/* Example 8- 21. Using the WHERE keyword */
SELECT author, title FROM classics WHERE author="Mark Twain"; -- 1 row(s) returned
SELECT author, title FROM classics WHERE isbn = "9781598184891 "; -- 1 row(s) returned

/* Example 8-22. Using the LIKE qualifier */
SELECT author, title FROM classics WHERE author LIKE "Charles%"; -- 2 row(s) returned
SELECT author, title FROM classics WHERE title LIKE "%Species"; -- 1 row(s) returned
SELECT author, title FROM classics WHERE title LIKE "%and%"; -- 2 row(s) returned
SELECT author, title FROM classics WHERE title LIKE "%"; -- Can match an empty string

-- LIMIT --
/* Example 8-23. Limiting the number of results returned */
SELECT author, title FROM classics LIMIT 3; -- 3 row(s) returned
SELECT author, title FROM classics LIMIT 1, 2; -- 2 row(s) returned
SELECT author, title FROM classics LIMIT 3, 1; -- 1 row(s) returned

/* Display all 'classics' table contents */
SELECT * FROM classics; 

-- MATCH...AGAINST --
/* Example 8- */
/* Example 8- */
/* Example 8- */
/* Example 8- */
/* Example 8- */
