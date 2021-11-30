#1
a <- 7
b <- 9
c <- a*b
c

#2
a <- 90
b <- 60
c <- 80
d <- 360-(a+b+c)
t <- a+b+c+d
t
d

#3
a <- 4
b <- 3
s <- (4*3)/2
s

#4
v1 <- 20
v2 <- 30
avg <- (60/v1) + (60/v2)
avg

#5
sugar <- 25
water <- 125
percent <- water/(water+sugar)*100
print(percent)

#6
v <- c(92,43,55,28,19)
v

#7
v1 <- c('cyan', 'magenta', 'yellow', 'black')
v2 <- c(TRUE, FALSE, TRUE)
v3 <- c(37.5, 8.2, 9.6, 11.89, 24.9)
v1
v2
v3

#8
v <- c(1,2,3,4)
sum(v)

#9
v1 <- c('T', 'T', 'T', 'F', 'T', 'F', 'F', 'T', 'T', 'F')
v2 <- c(T, T, T, F, T, F, F, T, T, F)
sum(v1) #char형식으로 벡터가 저장되어서 sum이 동작하지 않는다
sum(v2) #boolean형식은 T=1, F=0임으로 모두 더하면 6이 된다.

#10
s <- c(1:5000)
sum(s)

#11
even <- seq(2,100,2)
sum(even)

#12-1
v <- c(1:100)
v
#12-2
odd<-v[seq(1,100,2)]
odd

#12-3
odd[seq(from = 1, to=length(odd)-10, by=1)]

#12-4
pick <- odd[c(3,7,32)]
pick
#12-5
names(pick) <- c('3rd', '7th', '32th')
pick
#12-6
pick[-2]
#12-7
pick[1] <- 3
pick
