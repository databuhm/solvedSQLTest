/*
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Input Format
The STATION table is described as follows:

CREATE TABLE STATION (
    ID NUMBER,
    CITY VARCHAR2(21),
    STATE VARCHAR2(2),
    LAT_N NUMBER,
    LONG_W NUMBER
)
;

where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

-- Solution
SELECT DISTINCT city
FROM STATION
WHERE REGEXP_LIKE(city, '^[aeiou]', 'i')
;