# bai 4
rep(6, 6)
rep(c(5, 8), 4)
rep(c(5, 8), c(4, 4))
c(rep(5, 4), rep(8, 4))

# bai 6
y <- c(33, 44, 29, 16, 25, 45, 33, 19, 54, 22, 21, 49, 11, 24, 
  56)
summary(y[1:3])  # t2
summary(y[4:6])  # t3
summary(y[7:9])  # t4
summary(y[10:12])  #t5
summary(y[13:15])  #t6
summary(y[c(1, 4, 7, 10, 13)])  # shop 1
summary(y[c(2, 5, 8, 11, 14)])  # shop 2
summary(y[c(3, 6, 9, 12, 15)])  # shop 3

# bai 7
x1 = c(3, 2)
x2 = c(-1, 1)
x = rbind(x1, x2)

y1 = c(1, 4, 0)
y2 = c(0, 1, -1)
y = rbind(y1, y2)

# bai 9
head(quakes)
depth = quakes[, 3]
summary(depth)
mag = quakes[, 4]
summary(mag)

head(mtcars)

