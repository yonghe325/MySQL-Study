# 主键约束
CREATE TABLE P_K(
	id INT PRIMARY KEY,
	`name` VARCHAR(32),
	email VARCHAR(32)
	);
SELECT * FROM P_K;
# 主键列不能重复
INSERT INTO P_K VALUES
	(1,"jack","jack@mail"),
	(2,"tom","tom@mail");
INSERT INTO P_K VALUES
	(1,"zy","zy@mail");
	
# 复合主键
CREATE TABLE FP_K(
	id INT ,
	`name` VARCHAR(32),
	email VARCHAR(32),
	PRIMARY KEY(id,`name`)
	## 表示id和name两个 组合起来 不能完全相同
	);
SELECT * FROM FP_K;
INSERT INTO FP_K VALUES
	(1,"第一","邮箱1"),
	(2,"第二","邮箱2"),
	(3,"第三","邮箱3"),
	(3,"第四","邮箱4");
INSERT INT VALUES
	(4,"第四","邮箱4");