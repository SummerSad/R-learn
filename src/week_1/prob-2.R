volumn_sphere <- function(from, to) {
    if (from > to) {
        return("Can't do that")
    }
    r <- c()
    V <- c()
    for (i in from:to) {
        r <- c(r, i)
        V_value = 4/3 * (i^3) * pi
        V <- c(V, V_value)
    }
    data.frame(r, V)
}
