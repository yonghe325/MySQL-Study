基本语法
```
UPDATE tb_name 
	SET col_name1=expr1 [,col_name2=expr2,col_name3=expr3]
	[WHERE where_definition]
```
\[WHERE where_definition]如果不写,==则认为对表中该列所有的数据进行修改==
```
UPDATE ex SET salar = 500
# 将该表中的salar的所有数据更改为500

UPDATE ex SET salar = 5020 WHERE id = 1
# 将id列等于1的所在行的salary列的值更改为5020

UPDATE ex SET salar = salar+100 WHERE id = 2
# 将id列等于2的所在行的salary列的值在原有的基础上加上为100
```