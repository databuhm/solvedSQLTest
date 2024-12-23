/*
Query all columns for all American cities in the CITY table with populations larger than 100000.
The CountryCode for America is USA.

The CITY table is described as follows:

CREATE TABLE CITY (
    ID NUMBER,
    NAME VARCHAR2(17),
    COUNTRYCODE VARCHAR2(3),
    DISTRICT VARCHAR2(20),
    POPULATION NUMBER
)
;
*/

-- Solution
SELECT *
FROM city
WHERE population > 100000 AND countrycode = 'USA'
;