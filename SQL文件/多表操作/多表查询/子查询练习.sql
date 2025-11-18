# 查找每个部门工资高于本部门平均工资的资料
## 1.先得到每个部门对应的平均工资
SELECT deptno,AVG(sal) AS sal FROM emp
	GROUP BY deptno;
## 2. 把上面的结果当做子查询,和 emp 表进行多表查询 
SELECT ename,sal,temp.avg_sal,emp.deptno
	FROM emp,(
		SELECT deptno,AVG(sal) AS avg_sal 
		FROM emp
		GROUP BY deptno
		) temp
	WHERE emp.deptno = temp.deptno
	AND emp.sal >temp.avg_sal
	ORDER BY deptno;
# 查找每个部门工资最高的人的详细材料
## 1. 查找每个部门的最高工资
SELECT MAX(sal)
	FROM emp 
	GROUP BY deptno;
## 2. 根据最高工资查询deptno
SELECT *
	FROM emp,(
		SELECT MAX(sal) AS msal,deptno
		FROM emp 
		GROUP BY deptno
	) maxsal
	WHERE emp.sal = maxsal.msal
	# and emp.`deptno` = 10
	ORDER BY emp.deptno;
# 查询每个部门的信息(部门号,编号,地址,人员数量)
SELECT * FROM emp;
SELECT * FROM dept;

SELECT COUNT(ename) AS num,deptno
	FROM emp
	GROUP BY deptno;

SELECT dept.deptno,dname,loc,number.num
	FROM dept,(
		SELECT COUNT(ename) AS num,deptno
		FROM emp
		GROUP BY deptno
	) number
	WHERE dept.`deptno` = number.deptno;
	
