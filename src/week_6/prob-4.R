# Cau a nhi thuc, ve bieu do to chuc tan so la table
dat_a <- rbinom(100, 60, 0.4)
plot(table(dat_a), type = "h")

# Cau b poison, ve bieu do to chuc tan so la table
dat_b <- rpois(100, 4)
x11()
plot(table(dat_b), type = "h")

# Cau c pp chuan, ve ham phan phoi, ham mat do
dat_c <- rnorm(100, 50, 4)
x11()
par(mfrow = c(2, 1))
plot(dat_c, type = "l", main = "ham mat do")
dat_c_2 <- c()
sum <- 0
for (i in dat_c) {
    dat_c_2 <- c(dat_c_2, sum)
    sum = sum + i
}
plot(dat_c_2, type = "h", main = "ham phan phoi")
