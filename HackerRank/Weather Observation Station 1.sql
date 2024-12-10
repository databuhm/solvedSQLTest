/*
Query a list of CITY and STATE from the STATION table.

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
SELECT city, state
FROM station
;