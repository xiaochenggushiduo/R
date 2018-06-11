#导入分位数回归的包
library(quantreg)                         
# 引入数据
data(engel)
#查看数据格式
mode(engel)
[1] "list"
#查看变量名
names(engel)
[1] "income"  "foodexp"
#查看格式
class(engel)
[1] "data.frame"
#查看数据的前五行
head(engel)
income  foodexp
1 420.1577 255.8394
2 541.4117 310.9587
3 901.1575 485.6800
4 639.0802 402.9974
5 750.8756 495.5608
6 945.7989 633.7978
#画个散点图看看数据
plot(engel$income, engel$foodexp, xlab='income', ylab='foodexp')
