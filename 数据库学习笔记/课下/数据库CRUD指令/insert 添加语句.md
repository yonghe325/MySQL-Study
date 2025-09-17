基本语法
```
INSERT INTO table_name (column_name_1 ,column_name_2,column_name_3,,,)
	VALUES(value_1，value_2，value_3,,,);
```
按照column给出的列名,按需添加语句
## 插入的数据类型应与字段的数据类型相同
数据不同时,会尝试类型转化,不能转换的报错
## 插入的数据长度应与小于等于字段的规定长度
## 字符和日期类型应该包含在单引号中
## 列可以插入空值 (前提是该列可以为空)
```
insert into table values (NULL);
```
## 如果按序给所有列添加数据,则可以不用写前面的列名
# 进阶用法
## INSERT IGNORE INTO 语句
此语句的作用是如果插入的数据已经存在那么就忽略插入的数据(也就是不改变原来的数据)
如果不存在则插入新的数据  
注意：却分是否存在是通过主键来确定的
## 批量插入
多个insert插入语句可以通过分号连接,实现批量插入
Inset into 表名(字段1,字段2,字段3) values(值1,值2,值3);
Inset into 表名(字段1,字段2,字段3) values(值1,值2,值3);
## INSERT SELECT语句
1.此语句的作用是将SELECT语句的结果插入表中,可实现数据迁移  
2.语法:insert into 插入的表名(字段1,字段2,字段3) select 被查询的字段1,被查询的字段2 from 被查询的表名;  
3.先查看需要插入的表的所有数据
![[insert插入进阶01png.png]]
![[insert插入进阶02png.png]]
![[insert插入进阶03png.png]]
借此方法,实现表格的迁移,批量插入