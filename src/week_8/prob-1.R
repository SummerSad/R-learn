profit <- read.csv("../../data/profit.csv", header = T)
hist(profit$profit)

# Uoc luong khoang tin cay
datHang <- profit$profit[profit$profit > 65]
ci.mean <- function(x, alpha) {
    if (length(x) < 30) {
        eps = qt(1 - alpha/2, df = length(x) - 1) * sd(x)/sqrt(length(x))
    } else {
        eps = qnorm(1 - alpha/2) * sd(x)/sqrt(length(x))
    }
    c(mean(x) - eps, mean(x) + eps)
}
cat("KTC 99% dat hang: ", ci.mean(datHang, 0.01), "\n")

# Kiem tra
result <- t.test(profit$profit, mu = 60, conf.level = 0.99)
# Bac bo khi p <= alpha
alpha = 0.01
if (result$p.value <= alpha) {
    cat("Bac bo H0", "\n")
} else {
    cat("Khong du co so bac bo", "\n")
}
