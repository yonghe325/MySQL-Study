# 多表查询的自连接
SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;

# 显示公司员工和他上级的部门名字
##  分析: 
SELECT worker.ename AS '职工表',boss.ename AS '上级名'
	FROM emp worker,emp boss
	WHERE worker.mgr = boss.empno; 