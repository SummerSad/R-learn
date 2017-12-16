prob_2_3 <- function() {
    data <- read.csv("~/proj/R/data/data01.csv", header = TRUE)
    index <- c()
    for (i in 1:nrow(data)) {
        if (data$Age[i] <= 60) {
            index <- c(index, 0)
        } else if (data$Age[i] <= 70) {
            index <- c(index, 1)
        } else if (data$Age[i] <= 80) {
            index <- c(index, 2)
        } else {
            index <- c(index, 3)
        }
    }
    cbind(data, index)
}
