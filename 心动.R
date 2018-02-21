x<-seq(-1.1,1.1,length = 3000)
rep<-30
y<-matrix(,3000,rep)
yx<-matrix(,3000,rep)
xx<-matrix(,3000,rep)
c<-seq(0,1,length=rep)
for (i in 1:rep)
  for (p in 1:3000){
    y[p,i]<-(1-(x[p])^2)^(1/2)+((x[p])^2)^(1/4)+c[i]
    yx[p,i]<--(1-(x[p])^2)^(1/2)+((x[p])^2)^(1/4)+c[i]
    xx[,i]<-x}
for (q in 1:10){
  par(bg="pink")
  plot(c(rev(xx),xx),c(rev(y),yx), type = 'l' ,xlim = c(-1,1), xlab = "",ylab = "", axes = F,col=q)
  Sys.sleep(1)}
