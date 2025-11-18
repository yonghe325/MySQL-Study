# 演示隔离级别
# 1. 开启两个控制台,模拟两个用户
# 2. 查看当前级别
SELECT @@tx_isolation;
	-- mysql8.0不能用
SELECT @@transaction_isolation;
# 3. 把其中一个控制台隔离级别设置为 read uncommitted
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
# 4. 创建表
CREATE TABLE account(
	id INT ,
	`name` VARCHAR(32),
	money INT
);
DROP TABLE account;

# 查看当前级别
SELECT @@transaction_isolation;
# 查看系统隔离级别
SELECT @@globAL.transaction_isolation;