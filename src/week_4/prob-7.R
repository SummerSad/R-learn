func_4_7 <- function() {
    par(mfrow = c(2, 1))
    plot(0:50, dbinom(0:50, 50, 0.4), type = "h", col = "red")
    # Xap xi nhi thuc bang phan phoi chuan E = np = 20 Var = npq = 12
    plot(0:50, dnorm(0:50, 20, 12), type = "h", col = "blue")
}
