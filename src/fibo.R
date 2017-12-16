fib <- function(n) {
    if (n == 1 | n == 2) {
        return(1)
    }
    arr <- numeric(n)
    arr[1] = 1
    arr[2] = 1
    for (i in 3:n) {
        arr[i] <- arr[i - 1] + arr[i - 2]
    }
    arr[n]
}
