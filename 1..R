play <- c(421,298,254,232,239,368,465)
names(play) <- c('sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat')

play

play[c('tue', 'thu')] <- c(111,111)


sales <- c(750,740,760,680,700,710,850,890,700,720,690,730)
names(sales) <-paste(1:12, '월', sep=" ")
sales
