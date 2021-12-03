# 문제 1번 
n <- 12
if (n%%2 ==1) {
  type <-'odd'
} else {
  type <- 'even'
}
print(type)

# 문제 2번
res <- ifelse(n<0,-n,n)

# 문제 3번
input <- 1:10
n <- length(input)
switch <- TRUE
if(switch == T){
  result <- 1
  for(i in 1:n){
    result <- result * i
  }
}else{
  result <- sum(input)
}

# 문제 4번
result <- 1
for( i in 1:20){
  if(i%%2 ==1){
    result <- result *1
  }
}

# 문제 5번
result <-1
i <-1
while(i<=20){
  if(i%%2 ==1){
    result <- result *1
  }
  i <- i+1
}

# 문제 6번
apply(mtcars[,c('mpg','hp',wt)],2,mean)

# 문제 7번
triangle.area <- function(base, height){
  return (base*height/2)
}
triangle.area(5.2,4.6)

# 문제 8번
list(min=res.min, max=res.max, avg =res.avg)

# 문제 9번
idx <- which.max(mtcars$mpg)
rownames(mtcars)[idx]