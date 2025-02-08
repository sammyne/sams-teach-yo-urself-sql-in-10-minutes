-- 使用保留点
BEGIN;

INSERT INTO Customers(cust_id, cust_name) VALUES(1000000013, 'Toys Emporium');

savepoint StartOrder;

INSERT INTO Orders(order_num, order_date, cust_id) VALUES(20101, '2001/12/1', 1000000013);

rollback to StartOrder;

INSERT INTO OrderItems(order_num, order_item, prod_id, quantity, item_price) VALUES(20101, 1, 'BR01', 100, 5.49);

rollback to StartOrder;

INSERT INTO OrderItems(order_num, order_item, prod_id, quantity, item_price) VALUES(20101, 2, 'BR03', 100, 10.99);

rollback to StartOrder;

COMMIT;
