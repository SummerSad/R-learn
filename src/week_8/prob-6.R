tg_hoc <- read.csv("../../data/times.csv")
# Cau a
tg_gr5 <- tg_hoc$KHTN[tg_hoc$KHTN > 5]
alpha = 0.05
a_result <- prop.test(length(tg_gr5), length(tg_hoc$KHTN), p = 0.5, conf.level = 1 - 
    alpha)
if (a_result$p.value <= alpha) {
    cat("Bac bo H0", "\n")
} else {
    cat("Khong du co so,'\n'")
}

# Cau b
proptest.geq <- function(f, n, p0, alpha) {
    # H1 p > p0
    z0 = (f/n - p0)/sqrt(p0 * (1 - p0)/n)
    p.value = 1 - qnorm(z0)
    cat("p: ", p.value, "\n")
    if (p.value <= alpha) {
        cat("Bac bo H0", "\n")
    } else {
        cat("Khong du co so", "\n")
    }
}
proptest.geq(length(tg_gr5), length(tg_hoc$KHTN), 0.5, alpha)

# Cau c
proptest.leq <- function(f, n, p0, alpha) {
    # H1 p > p0
    z0 = (f/n - p0)/sqrt(p0 * (1 - p0)/n)
    cat(z0, "\n")
    p.value = qnorm(z0)
    cat("p: ", p.value, "\n")
    if (p.value <= alpha) {
        cat("Bac bo H0", "\n")
    } else {
        cat("Khong du co so", "\n")
    }
}
proptest.leq(length(tg_gr5), length(tg_hoc$KHTN), 0.5, alpha)
