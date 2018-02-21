#blood <- data.frame(x1 =gold$x1 ,x2= gold$x2,x3=goldy =gold$y)
d <-data.frame(gold)
lm.sol <- lm(y~x1+x2+x3,data = gold)
summary(lm.sol)

