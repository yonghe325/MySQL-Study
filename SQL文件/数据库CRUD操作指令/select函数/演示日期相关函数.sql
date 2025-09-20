# CURRENT_DATE 当前日期
SELECT CURRENT_DATE() FROM DUAL;
# CURRENT_TIME 当前时间
SELECT CURRENT_TIME() FROM DUAL;
# CURRENT_TIMESTAMP 当前时间戳
SELECT CURRENT_TIMESTAMP() FROM DUAL;
# DATE(datetime) 返回dtaetime的日期部分
SELECT DATE() FROM DUAL;
SELECT DATE(CURRENT_TIMESTAMP()) FROM DUAL;

# DATE_ADD(date2,INTERVAL d_valued_type) 在date2上加上日期或时间
# DATE_SUB(date2,INTERVAL d_valued_type) 在date2上减去日期或时间
# DATEDIFF(date1,date2) 两个日期差(结果是天)
# TIMEDIFF(date1,date2) 两个日期差(xx小时xx分钟秒)
# NOW() 返回当前日期+时间
# YEAR|Month|DATE(datetime) 年月日