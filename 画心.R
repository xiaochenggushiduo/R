rm(list=ls())
library(grid)
par(family='STKaitiSC-Regular')
heart <- function(lcolor){
  t=seq(0, 2*pi, by=0.1)
  x=16*sin(t)^3
  y=13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t)
  a=(x-min(x))/(max(x)-min(x))
  b=(y-min(y))/(max(y)-min(y))
  grid.lines(a,b,gp=gpar(col=lcolor,lty = "solid",lwd = 3))
}


vp <- viewport(.10, .15, w=.3, h=.6)
grid.newpage()
vp1 <- viewport(.4, .5, w=.5, h=.5,angle=15)
pushViewport(vp1)
heart("red")
vp2 <- viewport(0.9, .27, w=.7, h=.7,angle=-30)
pushViewport(vp2)
heart("hotpink")
grid.text("I Love You!",
          x=0.2,y =1.2, just = c("center", "bottom"),
          gp = gpar(fontsize=20), vp = vp)

