-- 原始 SQL
-- CREATE VIEW OrderItemsExpanded AS
-- SELECT order_num,
-- prod_id,
-- quantity,
-- item_price,
-- quantity*item_price AS expanded_price
-- FROM OrderItems
-- ORDER BY order_num;

-- 修正的 SQL，主要是去掉 ORDER BY。
CREATE VIEW OrderItemsExpanded AS
SELECT order_num,
prod_id,
quantity,
item_price,
quantity*item_price AS expanded_price
FROM OrderItems;