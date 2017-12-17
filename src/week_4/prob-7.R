func_4_7 <- function() {
    plot(0:50, dbinom(0:50, 50, 0.4), type = "h", col = "red")
    # Xap xi nhi thuc bang phan phoi chuan E = np = 20 Var = npq = 12
    curve(dnorm(x, 20, sqrt(12)), 0, 50, add = T)
}
