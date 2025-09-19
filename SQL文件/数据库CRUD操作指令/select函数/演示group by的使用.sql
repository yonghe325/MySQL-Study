# 演示group by + having

SELECT * FROM emp;

# 分别显示每个部门的平均,和最高工资
SELECT AVG(sal),MAX(sal),deptno FROM emp GROUP BY deptno;
# 显示每个部门的每种岗位的平均工资和最低工资
SELECT AVG(sal),MIN(sal),deptno,job 
	FROM emp 
	GROUP BY deptno,job
	ORDER BY deptno ASC;
# 显示平均工资低于2000的部门号和它的平均工资
SELECT AVG(sal) AS avg_dept,deptno FROM emp  
	GROUP BY deptno
	HAVING AVG(sal) < 2000;
# 或
SELECT AVG(sal) AS avg_dept,deptno FROM emp  
	GROUP BY deptno
	HAVING avg_dept< 2000;
