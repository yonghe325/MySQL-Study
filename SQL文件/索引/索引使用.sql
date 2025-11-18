# 演示MYSQL索引的使用
CREATE DATABASE `index`;
# 创建表
CREATE TABLE index_stu(
	id INT ,
	`name` VARCHAR(32)
);
# 查看表是否有索引
SHOW INDEX FROM index_stu;
SHOW INDEXES FROM index_stu;
SHOW KEYS FROM index_stu;
DESC index_stu;

# 添加索引
## 添加唯一索引
CREATE UNIQUE INDEX id01_index ON index_stu(id);
## 添加普通索引
CREATE INDEX id02_index ON index_stu(id);
	### 或
ALTER TABLE index_stu 
	ADD id_index (id);
## 添加主键索引
ALTER TABLE index_stu 
	ADD PRIMARY KEY (id);

# 删除索引
DROP INDEX id01_index ON index_stu;
DROP INDEX id02_index ON index_stu;
## 删除主键索引
ALTER TABLE index_stu DROP PRIMARY KEY;