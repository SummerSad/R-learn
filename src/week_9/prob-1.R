dat <- read.csv("../../data/volume.csv")
alpha = 0.05
# cau b
b.result <- t.test(dat$machine1, dat$machine2, conf.level = 1 - alpha)
cat("p:", b.result$p.value, "\n")
if (b.result$p.value <= alpha) {
    cat("Bac bo H0", "\n")
} else {
    cat("Khong du co so", "\n")
}

test.leq.oneside <- function(x, y, mu0, lech1, lech2, alpha) {
    # H1: mu < mu0
    n = length(x)
    m = length(y)
    cat(mean(x), "\n")
    cat(mean(y), "\n")
    z0 = (mean(x) - mean(y) - mu0)/sqrt(lech1^2/n + lech2^2/m)
    if (z0 < (-qnorm(1 - alpha))) {
        cat("Bac bo H0", "\n")
    } else {
        cat("Khong du co so", "\n")
    }
}
cat("Be hon: ", "\n")
test.leq.oneside(dat$machine1, dat$machine2, 0, 0.002, 0.0025, 0.05)

test.geq.oneside <- function(x, y, mu0, lech1, lech2, alpha) {
    # H1: mu > mu0
    n = length(x)
    m = length(y)
    z0 = (mean(x) - mean(y) - mu0)/sqrt(lech1^2/n + lech2^2/m)
    cat(z0, "\n")
    if (z0 > qnorm(1 - alpha)) {
        cat("Bac bo H0", "\n")
    } else {
        cat("Khong du co so", "\n")
    }
}
cat("Lon hon: ", "\n")
test.geq.oneside(dat$machine1, dat$machine2, 0, 0.002, 0.0025, 0.05)
