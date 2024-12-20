/*
A median is defined as a number separating the higher half of a data set from the lower half.
Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

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
WITH a
AS
    (
    SELECT lat_n, PERCENT_RANK() OVER (ORDER BY lat_n ASC) AS percent
    FROM station
    )

SELECT ROUND(lat_n, 4)
FROM a
WHERE percent = 0.5
;