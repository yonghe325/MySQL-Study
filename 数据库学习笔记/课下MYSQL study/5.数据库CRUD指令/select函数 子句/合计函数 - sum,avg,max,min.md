# sum函数
sum函数返回满足条件的行的和
sum只对数值起作用
多列求和,","不能少
```
select sum(列名){,sum(列名)...} from tb_name [where where_definition]
```
# avg平均值函数
```
select avg(列名){,avg(列名)...} from tb_name [where where_definition]
```
# max,min最值函数
```
select max(列名) from tb_name [where where_definition]
select min(列名) from tb_name [where where_definition]
```