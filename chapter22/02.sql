-- 外键
CREATE TABLE Orders2
(
  order_num INTEGER NOT NULL PRIMARY KEY,
  order_date DATETIME NOT NULL,
  cust_id CHAR(10) NOT NULL REFERENCES Customers(cust_id)
);

-- 温馨提示：SQLite3 不支持通过 alter table 语句添加外键。
