##############1##############
#리스트, 팩터

##############2##############
#D

##############3##############
v1 <- c(6,1,3,7,9)
v2 <- c(9,1,0,3,7)
3*v1-v2  #9  2  9 18 20

##############4##############
a <- 25:150
condi <- a %% 3 == 0 & 100 > a
a[condi]

##############5##############
a <- c('good', 'great', 'bad', 'okay', 'good', 'bad', 'good')
f <- factor(a)
levels(f)

##############6##############
price <- c(76000, 52000, 36000)
names(price) <- c('운동화', '바지', '티셔츠')
sale<-c(0.95, 0.9, 0.95)
num_shoes <- 1
num_pants <- 4
num_shirts <- 1
result_shoes <- c(price*sale*num_shoes)
result_pants <- c(price*sale*num_pants)
result_shirts <- c(price*sale*num_shirts)
total <- result_pants + result_shirts + result_pants
total
sum(total)

##############7##############
smartphone <-list(model = "iphon_se",
                  capacity =c(64,128,256),
                  display='Retina',
                  color = c('black', 'red', 'white'))
smartphone[[4]]

##############8##############
weight <- c(56,23,89,46,76,14,97,72,68,62,35)
names(weight) <-c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i','j', 'k')
total<-sum(weight)
p <- total -600
condi <- p<weight
name<-min(weight[condi])
names(weight[weight==name])

##############9##############
a <- c('여름', '봄', '여름', '겨울', '봄', '겨울', '여름', '여름', '봄', '가을')
favorite <- factor(a) 
levels(favorite)

##############10##############
a <-c('호주', '독일', '영국', '일본', '미국', '중국', '호주', '영국', '중국', '일본', 
      '터키', '미국', '중국', '중국', '호주', '터키', '독일', '일본', '중국', '독일')
country <- factor(a)
levels(country)
as.integer(country)

##############11##############
post <- list(user_id='하늘',
             post_id='p11010',
             view=37,
             image=FALSE,
             like='creeper', 'alex', 'skeleton', 'enderman')
post

##############12##############
account <- list(name='하늘',
             number=123-468-120566,
             balance=4128750,
             history=c(-50000, +20000, -32500, -79000, +42000))
p <- account$history>0
m <- account$history<0
length(a[p])
length(a[m])
