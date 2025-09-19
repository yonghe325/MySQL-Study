group by 子句用于对查询的结果分组统计

having用于==限制分组==显示结果,即分组后处理 -> ==过滤==


使用group by子句对列进行分组
```
select column1,column2,column3 ... from tb_name 
	group by column ;
```
使用having子句对分组后结果进行查询
```
select column1,column2,column3 ... from tb_name 
	group by column having ...;
```

## 演示案例
```
# 创建部门表
CREATE TABLE dept(
	depton MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,/*部门编号*/
	dname VARCHAR(20) NOT NULL DEFAULT "",/*部门名称*/
	loc VARCHAR(13) NOT NULL DEFAULT ""/*部门地址*/
);
# 添加部门数据
INSERT INTO dept VALUES
	(10,'ACCOUNTING','NEW YORK'),
	(20,'RESEARCH','DALLAS'),
	(30,'SALES','CHICAGO'),
	(40,'OPERATIONS','BOSHTON');
SELECT * FROM dept;
# 创建员工表
CREATE TABLE emp(
	empno MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,/*编号*/
	ename VARCHAR(20) NOT NULL DEFAULT '',/*名字*/
	job VARCHAR(9) NOT NULL DEFAULT '',/*工作*/
	mgr MEDIUMINT UNSIGNED,/*上级编号*/
	hiredate DATE NOT NULL,/*入职时间*/
	sal DECIMAL(7,2) NOT NULL,/*薪水*/
	comm DECIMAL(7,2),/*红利*/
	deptno MEDIUMINT UNSIGNED NOT NULL DEFAULT 0/*部门编号*/
);
# 添加员工数据
INSERT INTO emp VALUES
	(7369,'SMITH','CLERK',7902,'1990-12-17',800.00,NULL,20),
	(7499,'ALLEN','SALESMAN',7698,'1991-2-20',1600.00,300.00,30),
	(7521,'WARD','SALESMAN',7698,'1991-2-22',1250.00,500.00,30),
	(7566,'JONES','MANAGER',7839,'1991-4-2',2975.00,NULL,20),
	(7654,'MARTIN','SALESMAN',7968,'1991-9-28',1250.00,1400.00,30),
	(7698,'BLAKE','MANAGER',7839,'1991-5-1',2850.00,NULL,30),
	(7782,'CLARK','MANAGER',7839,'1991-6-9',2450.00,NULL,10),
	(7788,'SCOTT','ANALYST',7566,'1991-4-19',3000.00,NULL,20),
	(7839,'KING','PRESIDENT',NULL,'1991-11-17',5000.00,NULL,10),
	(7844,'TURNER','SALESMAN',7698,'1991-9-8',1500.00,NULL,30),
	(7900,'JAMES','CLERK',7698,'1991-12-3',950.00,NULL,30),
	(7902,'FORD','ANALYST',7566,'1991-12-3',3000.00,NULL,20),
	(7934,'MILLER','CLERK',7782,'1991-1-23',1300.00,NULL,10);
SELECT * FROM emp;
# 创建工资级别表
CREATE TABLE salgrade(
	grade MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
	losal DECIMAL(17,2) NOT NULL,
	hisal DECIMAL(17,2) NOT NULL
);
# 添加工资级别表
INSERT INTO salgrade VALUES
	(1,700,1200),
	(2,1201,1400),
	(3,1401,2000),
	(4,2001,3000),
	(5,3001,9999);
SELECT * FROM salgrade;
```
## 分别显示每个部门的平均,和最高工资
```
SELECT AVG(sal),MAX(sal),deptno FROM emp GROUP BY deptno;
```
按deptno的数据分组
![[group by演示01.png]]
## 显示每个部门的每种岗位的平均工资和最低工资
```
SELECT AVG(sal),MIN(sal),deptno,job 
	FROM emp 
	GROUP BY deptno,job
	ORDER BY deptno ASC;
```
## 显示平均工资低于2000的部门号和它的平均工资
运用having进行过滤
```
SELECT AVG(sal) AS avg_dept,deptno FROM emp  
	GROUP BY deptno
	HAVING AVG(sal) < 2000;

# 或使用别名
SELECT AVG(sal) AS avg_dept,deptno FROM emp  
	GROUP BY deptno
	HAVING avg_dept< 2000;
```
