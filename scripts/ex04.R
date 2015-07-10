#Input Data

#edit
mydata <- data.frame(age=numeric(0),           
                     gender=character(0), weight=numeric(0))
mydata <- edit(mydata) 
mydata


#读取文件
mydataframe <- read.table(file, header=logical_value,  
                          sep="delimiter", row.names="name")

grades <- read.table("studentgrades.csv", header=TRUE, sep=",", 
                     row.names="STUDENTID")

#来自Excel
getwd()
library(RODBC)
channel <- odbcConnectExcel("book.xls")
mydataframe <- sqlFetch(channel, "sheet1")
odbcClose(channel)
#odbcConnectExcel is only usable with 32-bit Windows

library(xlsx)
workbook <- "c:/myworkbook.xlsx"
mydataframe <- read.xlsx(workbook, 1)


# 来自spass
install.packages("Hmisc")
library(Hmisc)
mydataframe <- spss.get("mydata.sav", use.value.labels=TRUE)



#来自ＤＢＭＳ数据库
library(RODBC)            
myconn <-odbcConnect("mydsn", uid="Rob", pwd="aardvark")
crimedat <- sqlFetch(myconn, Crime)     
pundat <- sqlQuery(myconn, "select * from Punishment") 
close(myconn)         

#demo
#加载ODBC库
library(RODBC)
#创建连接
channel <- odbcConnect("local",uid="sa",pwd="Xc123456")
##查询一次性还款的未逾期账款
query1 <- "select * from table2"
##获取数据
data1 <- sqlQuery(channel,query1)
View(data1)
#获取列数
length(data1)

dim(data1)

str(data1)

class(data1)

head(data1)

ls()