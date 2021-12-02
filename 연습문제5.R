#1 매트릭스, 데이터프레임

#2 관측값, 변수

#3
x<-c(2,4,6,8)
y<-c(10,12,14,16)
z<-c(18,20,22,24)
m<-cbind(x,y,z)
m

matrix(c(2,10,18,
         4,12,20,
         6,14,22,
         8,16,24),
       nrow=4, byrow=T)
matrix(c(2,4,6,8,
         10,12,14,16,
         18,20,22,24),
       ncol=3, byrow=F)

#4 
colnames(m)=c('x','y'); rownames(m)=c('a','b','c','d')

#5
t(m)
df <- as.data.frame(m)
df.new<-data.frame(df,info)
class(df.new)

#6-1
blood <- c('A', 'O', 'AB', 'B', 'B')
rh <- c('+', '+', '-', '+', '+')
age <- c(21, 30, 43, 17, 26)
df <-(data.frame(blood, rh, age))
df
#6-2
colnames(df)
#6-3
df.nb <-subset(df,blood !='B')
df.nb

#7




#8
matrix(1:12, nrow=3) %%3 #True
matrix(1:12, nrow=3) +3 #True
matrix(1:12, nrow=3) +matrix(1:12, nrow=4) #False
matrix(1:12, nrow=3) +matrix(1:12, nrow=3) #True
rbine(matrix(1:9, nrow=3), c('1', '2', '3')) +3 #False

#9
번호 <- c('1', '2', '3', '4', '5', '6', '7')
제목 <- c('그대랑', '다툼', '빨래', '두통', '보조개', '매듭', '이상해')
좋아요 <- c(16075, 8218, 12119, 738, 3200, 16144, 5110)
love <-(data.frame(번호, 제목, 좋아요))
love
a <- c(max(좋아요))
best <- subset(love, 좋아요 == a)
best

#10
이름 <- c('스티브', '엔더맨', '크리퍼')
국어 <- c(97, 88, 100)
역사 <- c(100, 82, 96)
수학 <- c(83, 90, 76)
과학 <- c(95, 91, 89)
영어 <- c(92, 87, 95)
중간고사 <- (data.frame(이름, 국어, 역사, 수학, 과학, 영어))
중간고사_점수 <- (data.frame(국어, 역사, 수학, 과학, 영어))
중간평균 <- rowMeans(중간고사_점수)
중간고사_평균 <- (data.frame(이름, 중간평균))

mid <- (data.frame(이름, 국어, 역사, 수학, 과학, 영어))

국어 <- c(94, 92, 100)
역사 <- c(95, 95, 100)
수학 <- c(90, 87, 85)
과학 <- c(92, 95, 84)
영어 <- c(89, 94, 97)
기말고사 <- (data.frame(이름, 국어, 역사, 수학, 과학, 영어))
기말고사_점수 <- (data.frame(국어, 역사, 수학, 과학, 영어))
기말평균 <- rowMeans(기말고사_점수)
기말고사_평균 <- (data.frame(이름, 기말평균))

final <- (data.frame(이름, 국어, 역사, 수학, 과학, 영어))

a <- (data.frame(중간평균, 기말평균))
전체평균<-rowMeans(a)
전체평균 <- (data.frame(이름, 전체평균))
전체평균

avg <- (mid + final) /2
avg

#11
class(cars)
nrow(cars)
ncol(cars)
head(cars)
str(cars)
a<-max(cars$dist)
subset(cars, cars$dist==a)

#12
is.matrix(InsectSprays)
str(InsectSprays)
tail(InsectSprays,10)
levels(InsectSprays$spray)
table(InsectSprays$spray)
InsectSprays.e<-subset(InsectSprays, InsectSprays$spray=='E')
InsectSprays.e
colMeans(InsectSprays.e['count'])