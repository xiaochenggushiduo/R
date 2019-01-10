data('iris')
vdata <- iris[, 1:4]
colnames(vdata) <- c("x1","x2","x3","y")
vdata[,1:3]<-scale(vdata[,1:3])
vdata <- cbind(x0=1,vdata)
alpha = 0.01
m<-round(sqrt(0.43*1*4+0.12+2.54*4+0.77+0.35)+0.51,0)
wInput<-matrix(runif(4*m,-1,1),ncol = 4)
wHide<-runif(m,-1,1)
epsilon = 1e-3
errorList=NULL

#开始迭代
for (iter in 1:1000)
{
  error=0
  for(i in 1:nrow(vdata))
  {
    #正向传播过程
    xInput <- as.matrix(vdata[i,1:4])
    row.names(xInput)=NULL
    yi= vdata[i,5]
    d= wInput%*%t(xInput)
    z= (exp(d)-exp(-d))/(exp(d)+exp(-d))
    o= drop(wHide%*%z)
    e= o-yi
    error=error+e^2
    #若e>epsilon,则进入反向传播过程
    if(abs(e)>epsilon)
    {
      wHide=wHide-alpha*z[,1]*e
      wInput=wInput-tcrossprod((4*exp(2*d)/((exp(2*d)+1)^2))[,1]*wHide*alpha*e,xInput[1,])
    }

  }
  errorList=c(errorList,error)
  print(paste("iter:",iter,"error:",error))
  #当连续两次残差平方和的差小于epsilon时，退出循环
if(length(errorList)>2 &&
rev(errorList)[2]-rev(errorList)[1]<epsilon)break
}
#最终残差平方和
error
#求得的隐含层权重及闸值为
wInput
#求得隐含层权重及闸值为
wHide

