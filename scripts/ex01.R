# age向量、数组
age <- c(1,3,5,2,11,9,3,9,12,3)
weight <- c(4.4,5.3,7.2,5.2,8.5,7.3,6.0,10.4,10.2,6.1)
#
mean(weight)
sd(weight)
cor(age,weight)
plot(age,weight)

#查看帮助文档
help.start()

#查看mean的帮助文档
?mean
help("mean")

#查看mean的实例
example("mean")

#退出
q()