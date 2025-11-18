SELECT * FROM emp;
SELECT AVG(sal) AS avg_sal FROM emp
	GROUP BY deptno  
		HAVING avg_sal >1000
	ORDER BY avg_sal DESC
	LIMIT 0,2;