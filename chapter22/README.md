# 22. 高级 SQL 特性

## SQLite3 对约束的支持情况
### 新建表（CREATE TABLE）时可指定的约束类型：
- 主键 (PRIMARY KEY)
- 外键 (FOREIGN KEY)
- 唯一性 (UNIQUE)
- 检查约束 (CHECK)
- 非空 (NOT NULL)
### 无法直接通过 ALTER TABLE 新增的约束：
- 外键约束
- CHECK 约束
- UNIQUE 约束
- DEFAULT 值（例外：可用 ALTER TABLE 添加列的默认值）
