/*
Query a count of the number of cities in CITY having a Population larger than 10,000.

Input Format
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
SELECT COUNT(*)
FROM city
WHERE population > 100000
;