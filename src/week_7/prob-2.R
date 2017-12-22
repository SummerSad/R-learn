dat <- read.csv("../../data/data31.csv", header = T)
ci.mean <- function(x, alpha) {
    if (length(x) < 30) {
        eps = qt(1 - alpha/2, df = length(x) - 1) * sd(x)/sqrt(length(x))
    } else {
        eps = qnorm(1 - alpha/2) * sd(x)/sqrt(length(x))
    }
    c(mean(x) - eps, mean(x) + eps)
}

cat("KTC 95%: ", ci.mean(dat$profit, 0.05), "\n")
cat("KTC 99%: ", ci.mean(dat$profit, 0.01), "\n")
