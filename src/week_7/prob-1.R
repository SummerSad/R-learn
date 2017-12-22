n = 35
tb = 10
lech_chuan = 5
dat <- rnorm(n, tb, lech_chuan)
alpha = 0.05
epsilon = qnorm(1 - alpha/2) * mean(dat)/sd(dat)
