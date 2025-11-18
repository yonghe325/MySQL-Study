# 查询与smith的部门和岗位完全相同的所有雇员(且不含smith本人)
SELECT ename FROM emp
	WHERE (deptno,job) = (
			SELECT deptno,job FROM emp WHERE ename ='smith'
		)
	AND ename!='smith';
# 变例
SELECT ename FROM emp
	WHERE (deptno,job) = (
			SELECT deptno,job FROM emp WHERE ename ='ALLEN'
		)
	AND ename!='ALLEN';