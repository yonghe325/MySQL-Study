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
	(1,'jack','man',1500);