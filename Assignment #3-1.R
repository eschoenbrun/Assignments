p <-  .56
n <-  2000
se <- sqrt((p*(1-p))/n)
me <-  qnorm(.975)*se
ci <-  p+c(-me, me)
cv95 <- qnorm(.975)
cv99 <- qnorm(.995)
nest95 <-  ((cv95**2)*(p*(1-p)))/.02**2
nest99 <-  ((cv99**2)*(p*(1-p)))/.02**2