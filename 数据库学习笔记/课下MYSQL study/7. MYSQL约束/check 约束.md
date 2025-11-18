用于强行 行数据 必须满足的条件
 oracle 和 sql sever 均支持check
 
 但MYSQL5.7目前还不支持check
 只做语法校验,但不会生效
 
基本语法 : 
```
列名 类型 check_函数 (check条件)
```
在程序中控制,通过触发器完成

```
# 测试
CREATE TABLE check_sd (
	id INT PRIMARY KEY,
	`name` VARCHAR(32),
	sex VARCHAR(6) CHECK (sex IN('man','woman')),
	sal DOUBLE CHECK (sal > 1000 AND sal < 2000)
);

SELECT VERSION();
SELECT * FROM check_sd;

# 添加数据
INSERT INTO check_sd VALUES
	(1,'jack','mid',500);
	## 报错
INSERT INTO check_sd VALUES
	(1,'jack','man',1500);
	## 生效
```