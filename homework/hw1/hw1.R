#!/usr/bin/R

# Problem 1 
lg = function(x){ log(x, 2)}
n = seq(1, 100)
length(n)

plot(n, (lg(n)^n), type="l")

plot(n, n^(lg(lg(n))), type="l")
lines(n, lg(n)^n, type="l", lty=2)
lines(n, n^(lg(n)), type="l", lty=3)

plot(n, n^(lg(n)), type="l")
lines(n, n^(1/lg(n)), type="l", lty=2)

plot(n, lg(n), type="l")
lines(n, n^(1/lg(n)), type="l", lty=2)

plot(n, log(n, 1000), type="l", ylim=c(0,10))
lines(n, n^(1/lg(n)), type="l", lty=2)

plot(n, rep(1, length(n)), type='l')
lines(n, log(n, 1000), type="l", ylim=c(0,10))

plot(n, lg(n^1000), type="l")
lines(n, lg(n)^n, type="l", lty=2)

lg(100)^100
log(100^1000)

plot(n, log(n, 1000), type="l", ylim=c(0,2))
lines(n, (1.001)^n, type="l", lty=2)