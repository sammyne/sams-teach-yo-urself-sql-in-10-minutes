-- 检查约束

CREATE TABLE OrderItems2
(
  order_num INTEGER NOT NULL,
  order_item INTEGER NOT NULL,
  prod_id CHAR(10) NOT NULL,
  quantity INTEGER NOT NULL CHECK (quantity > 0),
  item_price MONEY NOT NULL
);

-- 成功
insert into OrderItems2(order_num, order_item, prod_id, quantity, item_price) values(1, 2, '3', 4, 5);

-- 失败
insert into OrderItems2(order_num, order_item, prod_id, quantity, item_price) values(10, 2, '3', 0, 5);