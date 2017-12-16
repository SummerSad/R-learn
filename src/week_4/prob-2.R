func_4_2 <- function() {
    temp <- sum(dhyper(5:12, 25, 75, 15))
    cat(temp, "\n")
    temp <- (phyper(12, 25, 75, 15) - phyper(4, 25, 75, 15))
    cat(temp, "\n")
}
