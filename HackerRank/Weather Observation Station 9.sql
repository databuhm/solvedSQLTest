/*
Query the list of CITY names from STATION that do not start with vowels.
Your result cannot contain duplicates.

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
FROM station
WHERE NOT city REGEXP '^[aeiou]'
;