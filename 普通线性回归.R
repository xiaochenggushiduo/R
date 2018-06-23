library(car)
D=gold
a=lm(y~., data=D);summary(a) # 定义模型，summary为输出汇总
vif(a) # 输出模型汇总