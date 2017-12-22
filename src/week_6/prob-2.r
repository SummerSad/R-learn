calc <- function(x) {
    cat("Trung binh: ", mean(x), "\n")
    cat("Phuong sai: ", var(x), "\n")
    cat("Trung vi: ", median(x), "\n")
}

draw <- function(x) {
    x11()
    par(mfrow = c(2, 1))
    plot(x, type = "l")  # l is line
    boxplot(x)
}

data1 <- read.csv("../../data/data01.csv")
# Tinh toan
cat("FPSA: ", "\n")
calc(data1$FPSA)
cat("TPSA: ", "\n")
calc(data1$TPSA)
# Ve
draw(data1$FPSA)
draw(data1$TPSA)
# Tach
k0 = data1$FPSA[data1$K == 0]
k1 = data1$FPSA[data1$K == 1]
# Merge
data2 <- read.csv("../../data/data02.csv")
datmerge <- merge(data1, data2, by = "K")
# New var
tPSA <- c()
for (i in 1:nrow(data1)) {
    if (data1$Age[i] <= 30) {
        tPSA <- c(tPSA, 0)
    } else if (data1$Age[i] <= 50) {
        tPSA <- c(tPSA, 1)
    } else {
        tPSA <- c(tPSA, 2)
    }
}
print(table(tPSA))
