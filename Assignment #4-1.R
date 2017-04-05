m0 <-  0
m1 <- 75
m2 <- 86
v1 <- 120
v2 <- 100
n1 <-  12
n2 <-  12
df <- n1+n2-2
pvar <- ((n1-1)*v1 + (n2-1)*v2)/df
psd <- sqrt(pvar)
se <-  psd*sqrt((1/n1 + 1/n2)) 
t <- (m1-m2-m0)/se 
tstat <- pt(t, .975, df = 22)
dist <- se * tstat
pest <- m1-m2
ci <-  c(pest + dist, pest - dist)



