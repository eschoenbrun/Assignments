meanmu <-  6.3
meanx <- 5.5
n <-  100
sd <- 2.9
se <- sd/sqrt(n)
me <-  qnorm(.975)*se
ci <-  p+c(-me, me)
cv95 <- qnorm(.975)
cv99 <- qnorm(.995)
nest95 <-  ((cv95**2)*(p*(1-p)))/.02**2
nest99 <-  ((cv99**2)*(p*(1-p)))/.02**2
zstat <- (meanx - meanmu)/se
meanx2 <- 5.9
zstat2 <- (meanx2 - meanmu)/se
