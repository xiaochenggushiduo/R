blood <- data.frame(x1 = ji$mei,x2= ji$shi,y = ji$jin)
lm.sol <- lm(y~x1+x2,data = blood)
summary(lm.sol)
