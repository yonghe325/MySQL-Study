# primary key列不能重复且不能为NULL
# 最多只能有一个主键,但可以是==复合主键==
 ==多个字段 组合起来 不能完全相同==
```
create table <表名>(
	id INT ,
	`name` VARCHER(32),
	email VARCHER(32),
	PRIMARY KEY (id,`name`)
## 表示id和name两个 组合起来 不能完全相同
);
```

 
# 主键的指定方式
1. 直接在字段后面指定:
```
字段名 字段类型 primary key
```
2. 在表定义后面指定: 
```
primary key (字段名1,字段名2,字段名n)
```

# 使用 DESC <表名>可以看到primary key 的情况
# 实际开发中,每个表往往都有一个主键