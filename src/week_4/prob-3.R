func_4_3 <- function() {
    curve(dexp(x, 0.6), 0, 10)
    curve(dexp(x, 0.3), 0, 10, add = T)
    cat("Dien tich duoi lamda=0.6 la", pexp(10, 0.6), "\n")  # chay vo cung den 10
    cat("Dien tich duoi lamda=0.6 la", pexp(10, 0.3), "\n")
}
