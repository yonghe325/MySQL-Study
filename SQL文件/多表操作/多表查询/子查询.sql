SELECT DISTINCT job FROM emp WHERE deptno = 10; 
SELECT * FROM emp
	ORDER BY deptno ASC;
SELECT ename,job,sal,deptno FROM emp
	WHERE job IN(
		SELECT DISTINCT job FROM emp WHERE deptno = 10)
	AND deptno !=10;
