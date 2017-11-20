# norm pp chuan
# binom pp nhi thuc
# pois pp poisson
# t pp student
# chisq pp chi binh phuong
# exp pp mu
# hyper pp sieu boi
# f phan pho fisher
# dluat mat do
# qluat phan vi
# rluat mo phong gia tri

## Ham mat do
# X la B(8,0.3) 
dbinom(c(4,6),8,0.3)

# X la N(2,0.12^2)
dnorm(1.7,2,0.12)

# Bieu dien do thi

plot(0:8, dbinom(0:8, 8, 0.3), type = "h", ylab = "P(X = x)")
# par(new=TRUE) cung mot cua so
dev.new()
curve(dnorm(x,2,0.12), from=1.5, to=2.5, ylab = "fX(x)")

## Ham phan phoi
