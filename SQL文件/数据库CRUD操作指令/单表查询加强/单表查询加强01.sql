SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;

# 使用where子句,查询1992.1.1后入职的员工
SELECT * FROM emp
	WHERE hiredate > '1992-01-01';

# 使用like操作符
##	% 表示0到多个字符
##	_ 表示单个字符

#如何显示首字符位S的员工姓名和工资
SELECT ename,sal FROM emp
	WHERE ename LIKE 'S%';
	
#如何显示第三个字符为大写O的所有员工的姓名和字符
SELECT ename FROM emp
	WHERE ename LIKE '__O%';
	
# 如何显示没有上级雇员的情况
SELECT * FROM emp
	WHERE mgr IS NULL;

# 查询表结构
DESC emp;

# 按照工资从高到低的顺序,显示雇员的信息
SELECT * FROM emp
	ORDER BY sal DESC ;
	

# 按照部门升序,工资降序的排列方式,显示雇员信息
SELECT * FROM emp
	ORDER BY deptno	ASC , sal DESC;