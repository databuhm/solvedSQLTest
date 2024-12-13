/*
You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

CREATE TABLE BST (
    N INTEGER,
    P INTEGER
)
;

Write a query to find the node type of Binary Tree ordered by the value of the node.
Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.
*/

-- Solution
SELECT n,
    (
    CASE WHEN p IS NULL THEN 'Root'
    WHEN n NOT IN
        (
        SELECT DISTINCT p
        FROM bst
        WHERE p IS NOT NULL
        ) THEN 'Leaf'
    ELSE 'Inner'
    END
    ) AS nodetype
FROM bst
ORDER BY n
;