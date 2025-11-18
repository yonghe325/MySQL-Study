CREATE DATABASE `transaction_stu`;
# 创建一张测试表
DROP TABLE ts_stu;
CREATE TABLE ts_stu(
	id INT ,
	`name` VARCHAR(32)
);
SELECT * FROM ts_stu;
# 开始事务
START TRANSACTION;
# 设置保存点
SAVEPOINT a;
# 执行DML操作
INSERT INTO ts_stu VALUES(100,'tom');
SELECT * FROM ts_stu;
# 设置保存点
SAVEPOINT b;
# 执行DML操作
INSERT INTO ts_stu VALUES(200,'jack');
# 回退
ROLLBACK TO b;
ROLLBACK TO a;
# 提交
COMMIT;