/* (QUESTIONS) */
/* (QUESTIONS) */
/* (QUESTIONS) */

-- 1. What is the purpose of the semicolon in MySQL queries?
--      Answer: A semicolon finalizes a MySQL query. It's used either to SEPARATE or
--      END COMMANDS.



-- 2. Which command would you use to view the available databases or tables?
--      Answer: I would us the SHOW command to view available database of tables.
-- Ex. #a. databases.
SHOW DATABASES;
-- Ex. #b. tables.
SHOW TABLES;



-- 3. How would you create a new MySQL user on the local host called 'newuser' with a
-- 		password of 'newpass' and with access to everything in the database 'newdatabase'?
/* #a. Create user */
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'newpass';
/* #b. Grant user privileges */
GRANT ALL PRIVILEGES ON newdatabase.* TO 'newuser'@'localhost';



-- 4. How can you view the structures of a table
--      Answer: You can view the structures of a table by using the DISCRIBE  command.
-- Ex. #a.
DESCRIBE user_table;



-- 5. What is the purpose of a MySQL index?
--      Answer: The purpose of the index is to conduct lightning-fast search queries.



-- 6. What benefit does a FULLTEXT index provide?
--      Answer: The FULLTEXT index provide for searches that only search for important words
--      and not 'stop words.' Such as, 'the', 'and', and 'is'.
-- 		The FULLTEXT index allows super-fast searches of entire columns of text.
-- 		FULLTEXT stores every word (not including 'stopwords') in every data string in a
-- 		special index that you can search using "natural language," in a similar manner to
-- 		using a search engine.



-- 7. What is a 'stopword'?
--      Answer: A stop word is a commonly used word that is not added to a MATCH...AGAINST query on a
--      FULLTEXT indexed column. 'stopwords' included within a built-in list of more that 500 words
-- 		that aren't very helpful for searching--words such as, 'the', 'as', 'is', 'for', and so on.
-- 		The list helps MySQL run much more quickly when performing a FULLTEXT search and keeps
-- 		database sizes down. Check out Appendix C for a full list of 'stopwords.'



-- 8. Both SELECT DISTINCT and GROUP BY cause the display to show only one output
-- 		row for each value in a column, even if multiple rows contain that value. What
-- 		are the main differences between SELECT DISTINCT and GROUP BY?
-- 		Answer: SELECT DISTINCT causes the return of a single row for each duplicated
-- 		occurance of the column specified. GROUP BY causes the return of a single columns with
-- 		the total number of duplicated columns



-- 9. Using the SELECT...WHERE construct, how would you return only rows containing the word
-- 		'Landhorne' somewhere in the 'author' column of the 'classics' table used in this chapter?
--  	Answer:
SELECT author FROM classics WHERE author LIKE "%Langhorne%";



-- 10. What needs to be defined in two tables to make it possible for you to join them together?
--      Answer: A common column (Foreign Key/Primary Key) needs to be defined in two tables to make it possible to them together.
