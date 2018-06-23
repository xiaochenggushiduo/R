tsdata<-gdp#加载基础数据
#转换成时序数据
tsdata<-ts(tsdata$gdp,start = tsdata$year[1])
n<-length(tsdata)
plot.ts(tsdata)
#此处预留10年的数据进行验证
orgPred=tsdata[(n-9):n]
tsdata=tsdata[1:(n-10)]
d=2
z=NULL
for (t in (d+1):length(tsdata)) {
  tmp=0
  for(i in 0:d)
  {
    tmp=tmp+(-1)^i*(factorial(d)/(factorial(i)*factorial(d-i)))*(tsdata[t-i])
  }
  z=c(z,tmp)
}
#使用单位根检验差分后序列的平稳性
library(fUnitRoots)
unitrootTest(z)
