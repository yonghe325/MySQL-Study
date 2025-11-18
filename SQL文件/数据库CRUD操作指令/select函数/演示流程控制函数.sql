# IF(expr1,expr2,expr3) 如果expr1为TRUE,则返回expr2,否则返回expr3
SELECT IF(!(TRUE),'北京','上海') FROM DUAL;
SELECT IF(TRUE,'北京','上海') FROM DUAL;
# IFNULL(expr1,expr2) 如果expr1不为空,则返回expr1,否则返回expr2

# SELECT CASE WHEN expr1 THEN expr2
# 	WHEN expr3 THEN expr4 
# 	ELSE expr5 END;
# 如果expr1为TRUE,则返回expr2,如果expr3为TRUE,则返回expr4,否则返回expr5
## when then可多次叠加


# 查询emp表，如果comm是null则显示00
## 判断空不能用 =
## 判断为空 用 is null
## 判断不为空用 is not null
SELECT IFNULL(NULL,'北京') FROM DUAL;
SELECT ename,IF(comm IS NULL,0.0,comm) 
	FROM emp;
SELECT ename,IFNULL(comm,0.0)
	FROM emp;
# 如果emp表的job是CLERK则显示职员，如果是MANAGER则显示经理,如果是SALESMAN则显示销售人员,其他正常显示
SELECT * FROM emp;
SELECT ename,(SELECT CASE 
		WHEN job = 'CLERK' THEN '职员'
		WHEN job = 'MANAGER' THEN '经理'
		WHEN job = 'SALESMAN' THEN '销售人员'
		ELSE job END) AS job,
	job
	FROM emp;
		