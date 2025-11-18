SELECT ename,sal,dname,deptno
	FROM emp,dept
	WHERE emp.deptno = dept.deptno;
	
SELECT ename,sal,dname,emp.deptno
	FROM emp,dept
	WHERE emp.deptno = dept.deptno;
# 如何显示部门号为10的部门,员工和工资
SELECT ename,sal,dname,emp.deptno
	FROM emp,dept
	WHERE emp.deptno = dept.deptno AND emp.`deptno` = 10;
# 显示各个员工的的姓名 ,工资,及其工资的级别 
SELECT  ename,sal,grade 
	FROM emp,salgrade
	WHERE sal>losal AND sal<hisal;
## 该方法不包括临界值
SELECT ename,sal,grade
	FROM emp,salgrade
	WHERE sal BETWEEN losal AND hisal;
## 使用BETWEEN AND ,BETWEEN AND 取值包含临界值
# 显示雇员名,工资及其所在的部门,并按部门排序
SELECT ename AS 姓名,sal AS 工资,dname AS 部门名称 FROM emp,dept
	WHERE emp.`deptno` = dept.`deptno`
	ORDER BY emp.`deptno` DESC;
SELECT * FROM salgrade;



SELECT * FROM emp,dept;
SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;
DESC emp;
