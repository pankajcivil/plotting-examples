#create line plot from column data

# Mise en place
rm(list = ls())

#set working directory
setwd("E:/plotting-examples/line_plot")

#read data 
M=read.table("../example_data/column_data.txt",sep=" ",header=FALSE)


x <- cbind(M[ ,1],M[ ,1],M[ ,1])
y <- cbind(M[ ,2],M[ ,3],M[ ,4])
#plotting margins.  
par(mar = c(4,4,2,2), font = 1.5)

matplot(x,y,type="l",xlab="X",ylab="Y",main="Line Plot of Column Data",
        col=c("black", "red", "darkgray"), lwd=c(2), lty=c(1,2,1),
        ylim=c(0,1), xlim=c(0,10), xaxs="i", yaxs="i")

grid(col = "lightgray", lty = "dotted",
     lwd = c(2))

#add a legend
legend(6.2,0.4, c("Series 1","Series 2","Series 3"), lty=c(1,2,1),
       lwd=c(2,2),col=c("black","red","darkgray")) 
