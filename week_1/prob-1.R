sum_i <- function(v, i) {
    if (i < 1) {
        return(0)
    }
    j <- i
    if (j > length(v)) {
        j <- length(v)
    }
    sum(v[1]:v[j])
}
