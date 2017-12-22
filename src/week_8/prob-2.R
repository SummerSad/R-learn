diem <- c(5, 6, 7, 8, 9, 10)
freq <- c(5, 10, 15, 20, 12, 8)
raw <- c()
for (i in 1:length(diem)) {
    raw <- c(raw, rep(diem[i], freq[i]))
}
stem(raw)
result <- t.test(raw, mu = 8, conf.level = 0.95)
if (result$p.value <= 0.05) {
    cat("Bac bo H0", "\n")
} else {
    cat("Khong du co so bac bo", "\n")
}

test.geq.oneside <- function(x, mu0, alpha) {
    # H0 mu = mu0 H1 mu > mu0
    t0 = (mean(x) - mu0)/(sd(x)/sqrt(length(x)))
    p.value <- pt(t0, length(x) - 1, lower.tail = F)
    cat("TH > hon, p: ", p.value, "\n")
    if (p.value <= alpha) {
        cat("Bac bo  H0", "\n")
    } else {
        cat("Khong du co so bac bo", "\n")
    }
}
test.geq.oneside(raw, 8, 0.05)

test.leq.oneside <- function(x, mu0, alpha) {
    # H0 mu = mu0 H1 mu < mu0
    t0 = (mean(x) - mu0)/(sd(x)/sqrt(length(x)))
    p.value <- pt(t0, length(x) - 1)
    cat("TH < hon, p: ", p.value, "\n")
    if (p.value <= alpha) {
        cat("Bac bo  H0", "\n")
    } else {
        cat("Khong du co so bac bo", "\n")
    }
}
test.leq.oneside(raw, 8, 0.05)

