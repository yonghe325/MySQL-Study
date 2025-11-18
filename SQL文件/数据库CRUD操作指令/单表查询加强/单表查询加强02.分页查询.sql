SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;


# 按雇员的ID号升序取出,每页显示三条记录,分别显示第一页,第二页,第三页
## 第一页
SELECT * FROM emp
	ORDER BY empno ASC
	LIMIT 0,3;
## 第二页
SELECT * FROM emp
	ORDER BY empno ASC
	LIMIT 3,3;
## 第三页
SELECT * FROM emp
	ORDER BY empno ASC
	LIMIT 6,3;
## 第四页
SELECT * FROM emp
	ORDER BY empno ASC
	LIMIT 9,3;
## 第五页
SELECT * FROM emp
	ORDER BY empno ASC
	LIMIT 12,3;
