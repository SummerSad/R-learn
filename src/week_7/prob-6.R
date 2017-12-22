source("prob-5.R")

ktc.tb.mau<-function(x,lechChuan,alpha)
{
    if(lechChuan==F)
    {
	ktc.tb(mean(x),sd(x),length(x),alpha)
    }
    else
    {
	ktc.tb(mean(x),lechChuan,length(x),alpha)
    }
}
