f_p <- function(p) {
    0.07 * p^-0.93
}

temp <- integrate(f_p, lower = 0, upper = 0.2)
cat(temp$value, "\n")
temp <- integrate(f_p, lower = 0, upper = 1)
cat(temp$value, "\n")
