```
字段名 字段类型 primary key
```
用于唯一的标示表行的数据
```
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
```
当定义主键约束后
==该列不能重复==
```
INSERT INTO P_K VALUES
	(1,"zy","zy@mail");
```
![[主键约束.png]]
# 删除主键
```
ALTER TABLE index_stu DROP PRIMARY KEY;
```