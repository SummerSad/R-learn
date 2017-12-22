diesel_engine <- read.delim("../../data/diesel_engine.dat")
diesel_time <- read.csv("../../data/diesel_time.csv")

# Liet ke ten
cat(names(diesel_engine), "\n")
cat(names(diesel_time), "\n")
for (i in 1:nrow(diesel_engine)) {
    if (is.na(diesel_engine$speed[i])) {
        diesel_engine$speed[i] = 1500
    }
    if (is.na(diesel_engine$load[i])) {
        diesel_engine$load[i] = 20
    }
}

# Tinh
cat("alcohol", "\n")
cat("Trung binh: ", mean(diesel_engine$alcohol), "\n")
cat("Phuong sai: ", var(diesel_engine$alcohol), "\n")
cat("Do lech tieu chuan: ", sd(diesel_engine$alcohol), "\n")
cat("min: ", min(diesel_engine$alcohol), "\n")
cat("max: ", max(diesel_engine$alcohol), "\n")

diesel <- merge(diesel_engine, diesel_time)
run_widelay <- diesel$run[diesel$delay < 1]
cat("Dem: ", length(diesel$run[diesel$timing == 30]), "\n")

# Ve
par(mfrow = c(3, 1))
boxplot(diesel$speed, main = "speed")
boxplot(diesel$timing, main = "timing")
boxplot(diesel$delay, main = "delay")

# Bieu do phan tan
x11()
par(mfrow = c(2, 1))
ts <- data.frame(diesel$timing, diesel$speed)
plot(table(ts))
