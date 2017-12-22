dat <- read.csv("../../data/data32.csv", header = T)
ci.mean <- function(x, alpha) {
    if (length(x) < 30) {
        eps = qt(1 - alpha/2, df = length(x) - 1) * sd(x)/sqrt(length(x))
    } else {
        eps = qnorm(1 - alpha/2) * sd(x)/sqrt(length(x))
    }
    c(mean(x) - eps, mean(x) + eps)
}

cat("KTC 95%: ", ci.mean(dat$KHTN, 0.05), "\n")

ci.prop <- function(f, n, alpha) {
    # Check nf >= 5 and n(1-f)>=5
    eps = qnorm(1 - alpha/2) * sqrt(f * (1 - f)/n)
    c(f - eps, f + eps)
}

time_more5 <- dat$KHTN[dat$KHTN > 5]
n = length(dat$KHTN)
f = length(time_more5)/n
cat("KTC 90%: ", ci.prop(f, n, 0.1), "\n")
cat("KTC 95%: ", ci.prop(f, n, 0.05), "\n")
cat("KTC 99%: ", ci.prop(f, n, 0.01), "\n")
