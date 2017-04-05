require(graphics)

x <-  read.csv('C:\\Users\\Stevens\\Desktop\\BIA 654\\Assignments\\654_Hwk_6_Q_1c.csv')
x$A <- as.factor(x$A)
x$B <- as.factor(x$B)
x$C <- as.factor(x$C)

interaction.plot(x$A, x$C, x$Response,  
                 xlab="A and C", 
                 ylab="Resonse Average", 
                 main="Interaction Plot")
                 
interaction.plot(x$B, x$C, x$Response,  
                 xlab="B and C", 
                 ylab="Resonse Average", 
                 main="Interaction Plot")

install.packages(gplots)
library(gplots)

plotmeans(x$Response~x$C,xlab="Factor C",ylab="mean errors", p=.95, main="Main
 effect Plot",barcol="black") 

