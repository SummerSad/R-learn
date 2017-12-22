tb <- function(x, freq_x) {
    sum <- 0
    n <- sum(freq_x)
    for (i in 1:length(x)) {
        sum <- sum + x[i] * freq_x[i]
    }
    sum/n
}

lechChuan <- function(x, freq_x) {
    sum <- 0
    n <- sum(freq_x)
    x_tb <- tb(x, freq_x)
    for (i in 1:length(x)) {
        sum <- sum + freq_x[i] * (x[i] - x_tb)^2
    }
    sqrt(sum/(n - 1))  # phuong sai la binh phuong, lech chuan thi khong
}

ci.mean <- function(x, freq_x, alpha) {
    n <- sum(freq_x)
    if (n < 30) {
        eps = qt(1 - alpha/2, df = n - 1) * lechChuan(x, freq_x)/sqrt(n)
    } else {
        eps = qnorm(1 - alpha/2) * lechChuan(x, freq_x)/sqrt(n)
    }
    c(tb(x, freq_x) - eps, tb(x, freq_x) + eps)
}

ci.prop <- function(f, n, alpha) {
    # Check nf >= 5 and n(1-f)>=5
    eps = qnorm(1 - alpha/2) * sqrt(f * (1 - f)/n)
    c(f - eps, f + eps)
}

cao <- c(1.3, 1.5, 1.7, 1.9, 2.1)
sl <- c(6, 34, 31, 42, 12)
cat("KTC 95% TB: ", ci.mean(cao, sl, 0.05), "\n")
