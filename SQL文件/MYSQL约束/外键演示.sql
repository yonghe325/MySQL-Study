# 创建主表
CREATE TABLE my_class (
	id INT PRIMARY KEY,
	`name` VARCHAR(32) NOT NULL DEFAULT ' '
);
# 创建从表
CREATE TABLE my_stu (
	id INT PRIMARY KEY,
	`name` VARCHAR(32) NOT NULL DEFAULT '',
	class_id INT,
	## 指定外键关系
	FOREIGN KEY (class_id) REFERENCES my_class(id)
);

SELECT * FROM my_class;
SELECT * FROM my_stu;

DESC my_class;
DESC my_stu;

# 为主表加入数据
INSERT INTO my_class VALUES
	(100,'java'),(200,'web');
# 为从表加入数据
INSERT INTO my_stu VALUES
	(1,'tom',100);
INSERT INTO my_stu VALUES
	(2,'jack',200);
# 外键列的插入数据在主表的主键列上不存在
INSERT INTO my_stu VALUES
	(3,'zy',300);
	## 先为主表列添加
INSERT  INTO my_class VALUES
	(300,'CSS');
	## 再为从表 外键约束列添加数据
INSERT INTO my_stu VALUES
	(3,'zy',300);
	 
