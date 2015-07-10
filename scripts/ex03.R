# 数据结构
#向量vectors
a <- c(1, 2, 5, 3, 6, -2, 4)
b <- c("one", "two", "three")
c <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)

#访问 a的第三个元素
a[3]

#访问 a的第1,3,5个元素
a[c(1,3,5)]

a[2:6]

#矩阵matrix
 y <- matrix(1:20,nrow = 5,ncol = 4)
 
 cells <- c(1,26,24,68)
 rnames <- c('R1','R2')
 cnames <- c('C1','C2')
 mymatrix <- matrix(cells,nrow=2,
                    ncol = 2,byrow = TRUE,dimnames = list(rnames,cnames))
 
 #使用下标
 x <- matrix(1:10,nrow = 2)
 x
 x[2,]
 x[,2]
 
 x[1,4]
 x[1,c(4,5)]
 
 
 # 数组矩阵的集合arrays
 dim1 <- c("A1", "A2")
 dim2 <- c("B1", "B2", "B3")
 dim3 <- c("C1", "C2", "C3", "C4")
 z <- array(1:24, c(2, 3, 4), dimnames=list(dim1, dim2, dim3))
 z
 
 
 #data frames
 patientID <- c(1, 2, 3, 4)
 age <- c(25, 34, 28, 52)
 diabetes <- c("Type1", "Type2", "Type1", "Type1")
 status <- c("Poor", "Improved", "Excellent", "Poor")
 patientdata <- data.frame(patientID, age, diabetes, status)
 
 patientdata
 
 
 patientdata[1:2]
 patientdata[c("diabetes", "status")]
 patientdata$age
 
 table(patientdata$diabetes, patientdata$status)
 
 
 
 #Factors
diabetes <-  c("Poor", "Improved", "Excellent", "Poor")
status <- c("Poor", "Improved", "Excellent", "Poor")
status <- factor(status, order=TRUE, 
                 levels=c("Poor", "Improved", "Excellent"))
status


patientID <- c(1, 2, 3, 4) 
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
diabetes <- factor(diabetes)                                
status <- factor(status, order=TRUE)
patientdata <- data.frame(patientID, age, diabetes, status)
str(patientdata)
summary(patientdata) 

#lists
g <- "My First List"
h <- c(25, 26, 18, 39)
j <- matrix(1:10, nrow=5)
k <- c("one", "two", "three")
mylist <- list(title=g, ages=h, j, k)
mylist 
