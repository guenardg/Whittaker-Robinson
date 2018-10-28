##
### Examples for WP
##
library(WR)
##rm(list=ls())
##
test.vec <- c(2,2,4,7,10,5,2,5,8,4,1,2,5,9,6,3)
res <- WRperiodogram(test.vec)
plot(res)
periodic.component <- function(x,T,c) cos((2*pi/T)*(x+c))
n <- 500
moon <- periodic.component(1:n, 118, 59)
daily <- periodic.component(1:n, 4, 0)
tide <- periodic.component(1:n, 2, 0)
res.moon <- WRperiodogram(moon, nperm=0)
res.moon <- WRperiodogram(moon, T2=130, nperm=99)
par(mfrow=c(1,2))
plot(moon)
plot(res.moon, prog=1)
var <- 5*moon + daily + tide + rnorm(n, 0, 0.5)
par(mfrow=c(1,2))
plot(var[1:150], pch=".", cex=1)
lines(var[1:150])
res.var <- WRperiodogram(var, T2=130, nperm=99)
plot(res.var, prog=1, line.col="blue")
which(res.var[,2] == max(res.var[,2]))
select <- sort(sample(1:500)[1:50])
var.na <- var
var.na[select] <- NA
res.var.na <- WRperiodogram(var.na, T2=130, nperm=99)
plot(res.var.na, prog=1)
ld.res.perio <- WRperiodogram(ldeaths, nperm=499)
par(mfrow=c(1,2))
plot(ld.res.perio, prog=1)
plot(ld.res.perio, prog=3)
acf(ldeaths)
##
res <- WRperiodogram(test.vec,nperm=0)
res
##
x <- c(2,2,NA,7,10,5,2,NA,8,4,1,2,5,9,6,3,NA,NA,NA,4,1,5,2,NA,1,5,7,NA,2,1,3,5,
       2,1,NA,7,10,5,2,5,8,4,1,2,5,9,6,3,5,2,1,4,1,5,2,2,1,NA,7,NA,2,1,2,5,
       3,2,NA,8,11,5,3,2,8,4,NA,2,5,9,6,3,5,3,2,4,1,5,2,NA,1,5,7,NA,2,NA,3,5,
       2,1,NA,7,10,5,2,NA,8,4,1,2,5,9,6,3,5,2,1,4,1,5,2,NA,1,5,7,NA,2,1,3,5)
WRP1 <- WRperiodogram(x, T1=2, nperm=9999, nopermute=17:19, mult="s")
plot(WRP1)
##
WRP2 <- WRperiodogram(rnorm(5000,0,1), T1=2, nperm=99999, nopermute=17:19, mult="s")
