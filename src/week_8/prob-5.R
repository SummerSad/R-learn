# Kiem dinh ty le
f = 20
n = 100
p0 = 0.15
alpha = 0.05
result <- prop.test(f, n, p = p0, conf.level = 1 - alpha)
if (result$p.value <= alpha) {
    cat("Bac bo H0", "\n")
} else {
    cat("Khong du co so", "\n")
}
