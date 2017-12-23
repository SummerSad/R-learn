dat <- read.csv("../../data/diameter.csv")
alpha = 0.05
result <- t.test(dat$extru.ma.1, dat$extru.ma.2, paired = T, conf.level = 1 - alpha)
if (result$p.value <= alpha) {
    cat("Bac bo H0", "\n")
} else {
    cat("Khong du co so", "\n")
}
