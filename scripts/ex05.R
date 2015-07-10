# 画图

attach(mtcars)
plot(wt, mpg)
abline(lm(mpg~wt))
title("Regression of MPG on Weight")
detach(mtcars)


dose  <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)

#原始画图
plot(dose, drugA, type="b")


#设置样式
opar <- par(no.readonly=TRUE)
par(lty=2, pch=17)           
plot(dose, drugA, type="b")  
par(opar)                    

#更改样式
plot(dose, drugA, type="b", lty=3, lwd=3, pch=15, cex=2)


#饼图
n <- 10
mycolors <- rainbow(n)
pie(rep(1, n), labels=mycolors, col=mycolors)
mygrays <- grey(0:n/n)
pie(rep(1, n), labels=mygrays, col=mygrays)



dose  <- c(20, 30, 40, 45, 60)     
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
opar <- par(no.readonly=TRUE)       
par(pin=c(2, 3))                                                    
par(lwd=2, cex=1.5)       
par(cex.axis=.75, font.axis=3)     
plot(dose, drugA, type="b", pch=19, lty=2, col="red")   
plot(dose, drugB, type="b", pch=23, lty=6, col="blue", bg="green")
par(opar)