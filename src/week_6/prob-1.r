tb_lech_saiso <- function(x) {
    cat("tb: ", mean(x), "\n")
    # tinh do lech tieu chuan
    cat("lech tieu chuan: ", sd(x), "\n")
    # tinh
    cat("sai so chuan: ", sd(x)/sqrt(length(x)), "\n")
}

func_6_1 <- function() {
    x <- c(1, 2, 5, 7, -3, 0, 5, 1, 5, 6)
    y <- c(2, 2, 0, -5, 7, 8, 11, 9, 3, 2)
    cat("x + y: ", x + y, "\n")
    cat("x * y: ", x * y, "\n")
    cat("x - y: ", x - y, "\n")
    # z phan chan cua x
    z <- c()
    for (i in x) {
        if (i%%2 == 0) {
            z <- c(z, i)
        }
    }
    cat("z: ", z, "\n")
    # t phan le cua y
    t <- c()
    for (i in y) {
        if (i%%2 == 0) {
            t <- c(t, i)
        }
    }
    cat("t: ", t, "\n")
    # w lon hon 0
    w <- c()
    for (i in x) {
        if (i > 0) {
            w <- c(w, i)
        }
    }
    for (i in y) {
        if (i > 0) {
            w <- c(w, i)
        }
    }
    cat("w: ", w, "\n")
    # tb, lech, sai so
    cat("x: \n")
    tb_lech_saiso(x)
    cat("min: ", min(x), " max: ", max(x), "\n")
    cat("tang dan: ", sort(x), "\n")
    cat("y: \n")
    tb_lech_saiso(y)
    cat("min: ", min(y), " max: ", max(y), "\n")
    cat("giam dan", sort(y, decreasing = T), "\n")
}
