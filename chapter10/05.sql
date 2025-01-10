-- 原始 SQL
-- SELECT order_num, COUNT(*) AS items
-- FROM OrderItems
-- GROUP BY items
-- HAVING COUNT(*) >= 3
-- ORDER BY items, order_num;


SELECT order_num, COUNT(*) AS items
FROM OrderItems
GROUP BY order_num
HAVING COUNT(*) >= 3
ORDER BY order_num;
