# 列出部门名称和这些部门员工名称和工作,同事显示出那些没有员工的部门

## 不使用外连接
SELECT ename ,job,dname,emp.deptno
	FROM emp ,dept
	WHERE emp.`deptno` = dept.`deptno`
	ORDER BY dname;