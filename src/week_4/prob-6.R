func_4_6<-function()
{
    # ylim la khoang cach ngan nhat cho truc y
    # nhi thuc
    plot(0:50,dbinom(0:50,50,0.08),ylim=c(0,0.25),type="h", main="X ~ B(50,0.08)")
    x11()
    # xap xi bang pois
    plot(0:50,dpois(0:50,4),ylim=c(0,0.25),type="h", main="X ~ P(4)")
}
