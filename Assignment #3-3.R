therm <- read.csv(file="therm.dat",head=TRUE,sep=",")
dif <- therm$difference
mean <- mean(dif)
n <-  nrow(therm)
sd <- sd(dif, na.rm = FALSE)
se <- sd/sqrt(n)
ci <-  p+c(-me, me)
cv99 <- qnorm(.995)
nest99 <-  ((cv99**2)*(p*(1-p)))/.02**2
zstat <- (meanx - meanmu)/se

t.test(dif, y = NULL,
       alternative = "two.sided",
       mu = mean, paired = FALSE, var.equal = FALSE,
       conf.level = 0.99)

hist(dif, probability = TRUE, breaks=10,
     xlab="Difference", ylim=c(0, 2), 
     main="normal curve over histogram")
curve(dnorm(x, mean=mean, sd=sd), col="darkblue", lwd=2, add=TRUE, yaxt="n")

require(graphics)
qqnorm(dif)
qqline(dif, datax = FALSE, distribution = qnorm, probs = c(0.25, 0.75), qtype = 7)


chisq.test(dif, y = NULL, correct = TRUE, 
           p = rep(1/length(dif), length(dif)), 
           rescale.p = FALSE, simulate.p.value = FALSE)