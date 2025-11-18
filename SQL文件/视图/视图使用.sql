# create view <视图名> as select语句
# alter VIEW <视图名> AS select语句
# show create VIEW <视图名> 
# drop view <视图名1>,<>

# 创建一个视图emp_view01
## 只能查询emp表的(empno,ename,job和deptno) 
## 1. 创建视图
CREATE VIEW emp_view01
	AS
	SELECT empno,ename,job,deptno FROM emp;
## 2. 查看视图
DESC emp_view01;
SELECT * FROM emp_view01;
SELECT job FROM emp_view01;
## 3. 更新新的视图
## 4. 查看创建视图的指令
SHOW CREATE VIEW emp_view01;

# 针对emp,dept 和salgrade 张三 表创建一个视图
# 可以显示雇员编号,雇员名,雇员部门名称 和 薪水级别
SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;
# 创建视图
CREATE VIEW EDS 
	AS
	SELECT emp.`deptno`,emp.`ename`,dept.`dname`,salgrade.`grade`
	FROM emp,dept,salgrade
	WHERE emp.`deptno` =  dept.`deptno`
	# and emp.`sal` > salgrade.`losal` and emp.`sal` < salgrade.`hisal`;
	AND emp.`sal` BETWEEN salgrade.`losal` AND salgrade.`hisal`；
SELECT *FROM EDS;