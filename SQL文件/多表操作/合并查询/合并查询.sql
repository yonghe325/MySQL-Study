SELECT ename, sal,job 
	FROM emp
	WHERE sal > 2500;
SELECT ename ,sal ,job 
	FROM emp 
	WHERE job ='MANAGER'
# 两个查询返回字段相同,可合并

# 1. union all 就是将两个结果合并,不会去重
SELECT ename, sal,job FROM emp WHERE sal > 2500
UNION ALL
SELECT ename ,sal ,job FROM emp WHERE job ='MANAGER';

# 1. union 会去重
SELECT ename, sal,job FROM emp WHERE sal > 2500
UNION
SELECT ename ,sal ,job FROM emp WHERE job ='MANAGER';