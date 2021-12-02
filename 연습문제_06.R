#1
library(svDialogs)
input.value<- dlgInput('Input type')$res
#2
#\n

#3
#A

#B
getwd()
#C
setwd()

#4
#csv

#5
#A=xlsx B=write.xlsx C=read.xlsx

#6
#A=sink B='result.txt' C=sink

#7
h<-as.numeric(dlgInput('Input type')$res)
w<-as.numeric(dlgInput('Input type')$res)
w*h/2

#8
ds<-read.table('ds_txt',sep =" ")

#9
write.csv(ds, 'ds.csv', sep=",")

#10
write.xlsx(iris,'Ch06/iris.xlsx', row.names = F)

#11
sink('Ch06/log.txt')
cat('----------x * y--------\n')
x<-as.numeric(dlgInput('Input x')$res)
y<-as.numeric(dlgInput('Input y')$res)
cat('x=',x,'y=',y,'result=',x*y)
sink()