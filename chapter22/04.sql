-- 检查约束

drop table if exists  ManOrWoman;

-- TODO: 找出 in 用 like 替换的写法。
CREATE TABLE ManOrWoman
(
  name CHAR(10) NOT NULL,
  gender TEXT NOT NULL CHECK (gender in ('M', 'F'))
);

-- 成功
insert into ManOrWoman(name, gender) values('alice', 'F'), ('bob', 'M');

-- 失败
insert into ManOrWoman(name, gender) values('carol', '-');
