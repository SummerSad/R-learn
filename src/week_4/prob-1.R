plot_hyper <- function(n, M, N) {
    plot(0:n, dhyper(0:n, M, N - M, n), type = "h")
}
