============
Cheat sheet
============

Mot so cau lenh
================

Tinh toan ::
        
        log(x), log10(x), exp(x)
        choose(n, k)
        x %/% y chia lay nguyen, 
        x %% y chia lay du

Thong ke ::
        
        sum(x), mean(x) trung binh,
        median(x) trung vi tai do P(X < median(x)) ~~ 0.5
        sd(x) do lech chuan
        var(x) phuong sai 
        summary(x) tong quan

Other ::

        seq(from, to, by),
        rep(x, ...)

Draw ::

        boxplot(x, ...)
        hist(x, ...)

Phan phoi 
==========

d
        mat do f(x)
p
        phan phoi F(x) = P(X<x) = nguyen ham f, (0 .. 1)
q
        phan vi nguoc lai cua phan phoi, phan vi muc p cua X
        la xp thoa man F(xp) = p
r
        random, them bien n (so luong random)

Deu ::
        
        dunif(x, min, max) = 1/(max-min)
        punif(q, min, max)
        qunif(p, min, max)
        runif(n, min, max)

Poisson ::

        dpois(x, lambda) = e^-lambda*(lambda^x)/x!
        ppois(q, lambda)
        qpois(p, lambda)

Chuan ::
        
        dnorm(x, tb = 0, sigma = 1) 
        pnorm(q, tb, sigma)
        qnorm(p, tb, sigma)
        qnorm(0.975) = 1.96

Student ::

       pt(q, bac)
       qt(p, bac)
       qt(0.6 ,1) = 0.325

Chi binh phuong ::
        
        dchisq(x , bac)

Nhi thuc ::
        
        n: size, p: prop
        dbinom(x, n, p) = nCx * p^x * (1-p)^(n-x)
        pbinom(q, n, p)
        qbinom(p, n, p)

Sieu boi ::
        
        m: white balls, n: black balls,
        k: number balls take out
        x: number white balls take out
        dhyper(x, m, n, k) = mCx * nC(k-x) / (m+n)Ck

Kiem dinh
==========

p.value < alpha thi bac bo H0 

1 mau
-------

Trung binh ::

        mac dinh la two.sided (khac nhau)
        mu_0: trung binh can kiem dinh
        conf.level: Khoang tin cay

        result <- t.test(x, 
        alternative = c("two.sided", "less", "greater"),
        mu = mu_0, conf.level = 0.95)
        result$p.value

Ty le ::

	y: so phan tu thoa tinh chat
	n: kich co mau
	p_0: ty le can kiem dinh

       	prop.test(y, n, p = p_0,
       	alternative = c("two.sided", "less", "greater"),
	conf.level = 0.95) 

2 mau
------

Trung binh ::
	
        x la mau I, y la mau II
	var.equal = FALSE: mac dich phuong sai khac nhau
        
	t.test(x, y,
        alternative = c("two.sided", "less", "greater"),
   	var.equal = FALSE, conf.level = 0.95)

	paired = TRUE: hai mau khong doc lap

	t.test(x, y
        alternative = c("two.sided", "less", "greater"),
   	paired = TRUE, conf.level = 0.95)

Ty le ::

        p1 = y1/n1, p2 = y2/n2

        prop.test(c(y1, y2), c(n1, n2), 
        alternative = c("two.sided", "less", "greater"),
        conf.level = 0.95)
