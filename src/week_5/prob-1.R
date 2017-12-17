Y <- function() {
    x1 <- rnorm(1, 0, 1)
    x2 <- rnorm(1, 0, 1)
    x1^2 + x2^2
}

MauY <- function(n) {
    replicate(n, Y())
}

par(mfrow = c(3, 1))

hist(MauY(100), freq = 0, breaks = 40)
curve(dchisq(x, 2), col = "blue", lty = 1, lwd = 2, add = TRUE)

hist(MauY(1000), freq = 0, breaks = 40)
curve(dchisq(x, 2), col = "blue", lty = 1, lwd = 2, add = TRUE)

hist(MauY(10000), freq = 0, breaks = 40)
curve(dchisq(x, 2), col = "blue", lty = 1, lwd = 2, add = TRUE)
