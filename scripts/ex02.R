
#查看当前工作目录
getwd()

#设置工作目录
setwd("dir")

#查看当前建立的所有对象
ls()

#保存对象到文件
save(data1,file="data1")

#加载文件
load("data1")


setwd('D:/practise/git/R-in-action')
options()
options(digits=3) 
x <- runif(20)
summary(x)    
hist(x)       
savehistory() 
save.image() 
q()