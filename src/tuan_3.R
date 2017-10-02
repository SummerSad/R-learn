# bai 1
f = function(p) return(0.07 * p^(-0.93))
integrate(f, lower = 0, upper = 0.2)  # P(X<=.2)
integrate(f, lower = 0, upper = 1)  # kiem tra ham mat do

# bai 2
x = sample(1:5, 100, replace = TRUE, prob = c(0.1, 0.2, 0.4, 
    0.2, 0.1))
table(x)/100

# vi du 1
k = 0:8
p = function(k) choose(8, k) * 0.3^k * 0.7^(8 - k)
p(k)
sum(p(k))
plot(k, p(k), type = "h")  # histogram
F = function(k) {
    return(sum(p(0:k)))
}
F = Vectorize(F)
F(4)
plot(stepfun(k, c(0, F(k))))
K = k[F(k) >= 0.5]  # K tra ve so trong k thoa man
K[1]
