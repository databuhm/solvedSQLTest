/*
Query the Name of any student in STUDENTS who scored higher than 75 Marks.
Order your output by the last three characters of each name.
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Input Format
The STUDENTS table is described as follows:

CREATE TABLE STUDENTS (
    ID INTEGER,
    Name STRING,
    Marks INTEGER
)
;

The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.
*/

-- Solution
SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name, 3), ID
;