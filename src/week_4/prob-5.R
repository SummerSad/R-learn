# chi binh phuong
func_4_5 <- function() {
    plot(0:10, dchisq(0:10, 3), type = "h")
    x11()
    plot(0:10, dchisq(0:10, 5), type = "h")
}
