a = data.frame(one$X__1)
b = data.frame(table(a))

#变量重命名
#library(reshape)
#rename(b,c(a="v"))

#plot(x = b$v, y = b$Freq, xlab = "Time", ylab = "PM2.5 at 8 m")
#points(x = b$v, y = b$Freq, col = "red", type = "l") # 增加一条线
hist(b$v,xlab = "Weight",col = "yellow",border = "blue")#直方图
barplot(b,v, col)#条形图