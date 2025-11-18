
SELECT * FROM stu;
CREATE TABLE stu (
	id INT ,
	`name` VARCHAR(32));
INSERT INTO stu VALUES(1,"jack"),(2,"tom"),(3,"kity"),(4,"nono");
SELECT * FROM exam;
CREATE TABLE exam(
	id INT,
	grade INT);
INSERT INTO EXAM VALUES(1,56),(2,76),(11,8);


## 不使用外连接,通过过滤条件查询
## 无法显示非匹配条件

# 所有人的成绩如果没有成绩,也要显示该人的姓名和id号,成绩显示为空
SELECT stu.id, `name` , grade
	FROM stu ,exam
	WHERE stu.`id` = exam.`id`

## 左外连接
SELECT `name`,stu.`id`,grade
	FROM stu LEFT JOIN exam
	ON stu.`id` = exam.`id`;显示空
# 列出部门名称和这些部门的员工信息(名字和工作)
# 同事列出那些没有员工的部门
## 左外连接
SELECT * 
	FROM dept LEFT JOIN emp
	ON dept.`deptno` = emp.`deptno`;
## 右外连接 
SELECT dname,ename,emp.deptno
	FROM emp RIGHT JOIN dept
	ON dept.`deptno` = emp.`deptno`;



# 显示所有成绩,如果没有名字匹配,	
## 右外连接
SELECT stu.`id`, `name`,grade
	FROM stu RIGHT JOIN exam
	ON stu.`id` = exam.`id`;
	