library(quantmod,xts,zoo)
ret <- getSymbols("601601.SS",src="yahoo",auto.assign=FALSE,from="2018-05-01", to='2018-06-15') #中国太保
chartSeries(ret ,up.col='red',dn.col='green')#画个图来看看,红绿，搞股票的同学都知道吧,蜡烛线
addSMA(5)#五日均线  
addSMA(20)#20日均线 