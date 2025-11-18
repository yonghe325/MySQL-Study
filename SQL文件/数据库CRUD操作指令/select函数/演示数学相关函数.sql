# ABS(num) 绝对值
SELECT ABS(-10) FROM DUAL;
# BIN(decimal_num) 十进制转二进制
SELECT BIN(10) FROM DUAL;

# CEILING(num)向上取整,得到比num大的最小整数
SELECT CEILING(3.5) FROM DUAL;
# FLOOR(num) 向下取整,得到比num小的最大整数
SELECT FLOOR(3.5) FROM DUAL;

# CONV(number2,from_base,to_base) 进制转换 将from_base进制的number2转换为to_base进制的数
SELECT CONV(5,10,2) FROM DUAL;
SELECT CONV(16,16,10) FROM DUAL;

# FORMAT(number,decimal_place) 保留小数位数
SELECT 78.123456789 FROM DUAL;
SELECT FORMAT(78.123456789,2) FROM DUAL;

# HEX(decimalnumber) 转十进制

# LEAST(number1,number2,number3,number4....) 求最小值
SELECT LEAST(-1,1,2,3,4,56,7,8,9) FROM DUAL;

# MOD(numberator,denominator ) 求余
SELECT MOD(-10,4) FROM DUAL;

# RAND([seed]) 返回随机数 范围 0 <= v <=1.0 填入种子控制随机数生成
SELECT RAND(),RAND() FROM DUAL;
