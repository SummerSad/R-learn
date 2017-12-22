year <- c(70, 71, 72, 73, 74, 75, 76, 77, 78, 79)
snow <- c(6.5, 12, 14.9, 10, 10.7, 7.9, 21.9, 12.5, 14.5, 9.2)

dat <- data.frame(year, snow)
plot(dat, type = "h")
