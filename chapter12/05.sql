-- 使用联结从 Customers 表返回顾客名称（cust_name） ，并从 OrderItems 表返回所有订单的总价。

SELECT cust_name, SUM(item_price*quantity) AS total_price
FROM Customers
  INNER JOIN Orders ON Customers.cust_id = Orders.cust_id
  INNER JOIN OrderItems ON Orders.order_num = OrderItems.order_num
GROUP BY cust_name
HAVING SUM(item_price*quantity) >= 1000
ORDER BY cust_name;