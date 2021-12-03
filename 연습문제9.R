#1-1
install.packages('carData')
library(carData)
MplsStops
ds<- table(MplsStops$race)
pie3D(ds, main='race',
      labels=names(ds),
      labelcex = 1.0,
      explode=0.1,
      radius = 1.5,)
#1-2
ds<- table(MplsStops$problem)
pie3D(ds, main='problem',
      labels=names(ds),
      labelcex = 1.0,
      explode=0.1,
      radius = 1.5,
      col=c('red', 'blue'))
#1-3
ds<- table(MplsStops$personSearch)
pie3D(ds, main='personSearch',
      labels=names(ds),
      labelcex = 1.0,
      explode=0.1,
      radius = 1.5,)
#1-4
ds<- table(MplsStops$gender)
pie3D(ds, main='gender',
      labels=names(ds),
      labelcex = 1.0,
      explode=0.1,
      radius = 1.5,
      col = c('orange', 'green', 'yellow'))

#2-1
library(DAAG)
data(greatLakes)
ds<- data.frame(year=1918:2009, greatLakes)
ds
plot(ds$year,
     ds$Erie,
     main='',
     type='l',
     lty=1,
     lwd=1,
     xlab='Year',
     ylab='수위')
#2-2
plot(ds$year,
     ds$michHuron,
     main='michHuron',
     type='o',
     lty=1,
     lwd=1,
     xlab='Year',
     ylab='수위',)
#2-3
plot(ds$year,
     ds$Erie,
     main='',
     type='b',
     lty=1,
     lwd=1,
     col='red',
     xlab='Year',
     ylab='수위',
     ylim = c(173,177.5))
lines(ds$year,
     ds$michHuron,
     type='b',
     col='blue')
lines(ds$year,
      ds$StClair,
      type='b',
      col='yellow')

#3-1
library(DAAG)
str(cfseal)
ds<-cfseal$weight
boxplot(ds, main='weight')
#3-2
ds<-cfseal$heart
boxplot(ds, main='heart')
#3-3
grp <- rep('old', nrow(cfseal))
grp[cfseal$age < mean(cfseal$age)] <- 'young'
boxplot(cfseal$age~grp,
        col=c('orange', 'green'))
#3-4
weight=cfseal[,'weight']
boxplot.stats(weight) #28, 68.5
grp = rep('low',nrow(cfseal)) # 위 무게 범위 설정
grp[cfseal$weight>=68.5] = 'high'
grp[28<cfseal$weight & cfseal$weight<68.5]='middle'
boxplot(cfseal$stomach~grp, #boxplot 생성
        main='stomach weight')

#4-1
library(DAAG)
data(greatLakes)
ds<-data.frame(greatLakes)
ds
Erie<-ds$Erie
michHuron<-ds$michHuron
plot(Erie, michHuron,
     )
#4-2
ds <- ds[,1:4]
plot(ds,
     col=c('red','blue','orange','black')
     )

#5-1
data("grog")
head(grog)
plot(grog[,c(1:3)])
#5-2
levels(grog$Country)
group<-as.numeric(grog$Country)
color<-c('red','blue')
grog[,-5]
plot(grog[,c(1:3)],pch=c(group),col=color[group])

