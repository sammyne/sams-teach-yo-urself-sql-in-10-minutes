-- 给表的 vend_id 列定义添加关键字 PRIMARY KEY，使其成为主键。
CREATE TABLE Vendors2
(
  vend_id CHAR(10) NOT NULL PRIMARY KEY,
  vend_name CHAR(50) NOT NULL,
  vend_address CHAR(50) NULL,
  vend_city CHAR(50) NULL,
  vend_state CHAR(5) NULL,
  vend_zip CHAR(10) NULL,
  vend_country CHAR(50) NULL
);
