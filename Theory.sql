--INSERT 
INSERT INTO TABLE_NAME (column1, column2, column3,...columnN) -- will insert in the pointed columns
VALUES (value1, value2, value3,...valueN);

INSERT INTO table_name
VALUES (value1, value2, value3, ...); -- will insert for all the columns

INSERT INTO menu
VALUES (1, 'croissant', 1, DEFAULT),
(2, 'bread', 3, DEFAULT),
(3, 'eclairs', 2, DEFAULT);

--READ/SELECT:
SELECT column1, column2, ...
FROM table_name;

SELECT * FROM menu;

SELECT menu_id, product_name from menu;

--SELECT with WHERE:
SELECT column1, column2, columnN
FROM table_name
WHERE [search_condition]

SELECT * FROM COMPANY
WHERE AGE >= 25 AND SALARY >= 65000;

SELECT * FROM COMPANY 
WHERE AGE >= 25 OR SALARY >= 65000;

SELECT * FROM COMPANY 
WHERE AGE IS NOT NULL;

SELECT * FROM COMPANY 
WHERE NAME LIKE 'Pa%'; --no matter what is after Pa

SELECT * FROM COMPANY 
WHERE AGE IN ( 25, 27 ); --value is either 25 or 27

SELECT * FROM COMPANY 
WHERE AGE NOT IN ( 25, 27 ); --value is neither 25 nor 27

SELECT * FROM COMPANY 
WHERE AGE BETWEEN 25 AND 27; --value is in BETWEEN 25 AND 27

SELECT AGE FROM COMPANY
WHERE EXISTS (SELECT AGE FROM COMPANY WHERE SALARY > 65000);

SELECT menu_id, product_name from menu
WHERE menu_id = 1;

SELECT menu_id, product_name from menu
WHERE menu_id IN (1, 2);

SELECT menu_id, product_name from menu
WHERE menu_id = 1;

SELECT menu_id, product_name from menu
WHERE menu_id BETWEEN 1 AND 2;

--UPDATE
UPDATE table_name
 SET 
 column1 = value1, 
 column2 = value2,
 ...
 WHERE condition;
 
 UPDATE menu
 SET 
 product_name = 'chocolate croissant',
 quantity = 2
 WHERE menu_id = 1;
 
 --DELETE -It is possible to delete all 
--rows in a table without deleting the table.
-- This means that the table structure,
-- attributes, and indexes will be intact

DELETE FROM table_name WHERE condition;
 
DELETE FROM menu WHERE product_name='eclairs';
 


