# bai 1
tong <- function(x, i) {
    return(sum(x[1:i]))
}

# bai 2
thetich <- function(r) {
    V = 4 * pi * (r^3)/3
    return(data.frame(r, V))
}

r = c(3:20)
thetich(r)

# bai 3
data01 = read.csv(file.choose(), header = TRUE)  # doc file data01.csv
index = c()
for (age in data01[, 1]) {
    if (age <= 60) 
        index = c(index, 0)
    if (age > 60 && age <= 70) 
        index = c(index, 1)
    if (age > 70 && age <= 80) 
        index = c(index, 2)
    if (age > 80) 
        index = c(index, 3)
}

data.frame(data01[, 1], index)  # test

# bai 4
data11 = read.csv(file.choose(), head = TRUE)  # doc file data11.csv
ham4 <- function(data11) {
    size = length(data11[, 1, ])
    height = c()
    for (i in 1:size) {
        height = c(height, (data11[, 2][i] - data11[, 1][i])/data[, 
            3][i])
    }
    cat("min: ", min(height), "\n")
    cat("max: ", max(height), "\n")
    cat("medium: ", mean(height), "\n")
}

# bai 5
phanvi = function(X, p) {
    kq = c()
    n = length(X)
    X = sort(X, decreasing = FALSE)
    L = (p/100) * n
    if (L == round(L)) 
        kq = c(kq, (X[L] + X[L + 1])/2) else kq = c(kq, X[round(L)])
    return(kq)
}