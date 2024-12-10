/*
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters.
Your result cannot contain duplicates.

Input Format
The STATION table is described as follows:

CREATE TABLE CITY (
    ID NUMBER,
    CITY VARCHAR2(21),
    STATE VARCHAR2(2),
    LAT_N NUMBER
    LONG_W NUMBER
)
;
*/

-- Solution
SELECT DISTINCT city
FROM station
WHERE REGEXP_LIKE(city, '^[aeiou]', 'i')
    AND REGEXP_LIKE(city, '[aeiou]$', 'i')
;