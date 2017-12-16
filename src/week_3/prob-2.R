prob_3_2 <- function() {
    x = sample(1:5, 100, TRUE, c(0.1, 0.2, 0.4, 0.2, 0.1))
    print(table(x)/100)
    plot(table(x)/100, type = "h")
}
