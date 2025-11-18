CREATE TABLE tab_copy(
	id INT DEFAULT NULL,
	`name` VARCHAR(32),
	sal DOUBLE,
	job VARCHAR(32),
	deptno INT 
);
SELECT * FROM tab_copy;
# 自我复制演示
## 1. 将别的表的记录复制进 tab_copy
INSERT INTO tab_copy
	(id ,`name`,sal,job,deptno)
## 2. 自我复制
INSERT INTO tab_copy
	SELECT * FROM tab_copy;
SELECT * FROM tab_copy;
SELECT COUNT(*) FROM tab_copy;