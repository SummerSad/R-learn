func_4_4 <- function() {
    plot(0:8, dpois(0:8, 1), type = "h")
    # x11 to open new windows for plot
    x11()
    plot(0:8, dpois(0:8, 2), type = "h")
}
