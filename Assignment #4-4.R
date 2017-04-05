datamaster <- read.csv("C:/Users/Stevens/Desktop/R/promotions.csv", header=TRUE)
promo1df <-  data.frame(promo = "1", volume = data$X1)
promo2df <-  data.frame(promo = "2", volume = data$X2)
promo3df <-  data.frame(promo = "3", volume = data$X3)
data <- rbind(promo1df, promo2df, promo3df)
levene.test(data$volume, data$promo, location="mean")

promo1 <-  datamaster[, "X1"]
promo2 <-  datamaster[, "X2"]
promo3 <-  datamaster[, "X3"]

shapiro.test(promo1)
shapiro.test(promo2)
shapiro.test(promo3)

anova <-  lm(volume ~ promo, data = data)
anova(anova)