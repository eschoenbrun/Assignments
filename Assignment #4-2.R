library(tidyverse)
library(plyr)
library(foreign)
library(lattice)
library(graphics)
library(lawstat)

data <- read.csv("C:/Users/Stevens/Desktop/R/NHANES_for_PopHealthPortal.dat")

data <- rename(data, replace = c("Body.Mass.Index..kg.m..2."="BMI"))
data2 <- select(data, BMI, Gender)
data <-  subset(data2, !is.na(data$BMI))

male <- subset(data, Gender == "Male", "BMI")
female <- subset(data, Gender == "Female", "BMI")

mmean <- mean(male$BMI)
fmean <- mean(female$BMI)

msd <- sd(male$BMI)
fsd <- sd(female$BMI)

require(graphics)
qqnorm(male$BMI)
qqline(male$BMI, datax = FALSE, distribution = qnorm, probs = c(0.25, 0.75), qtype = 7)
shapiro.test(male$BMI)
qqnorm(female$BMI)
qqline(female$BMI, datax = FALSE, distribution = qnorm, probs = c(0.25, 0.75), qtype = 7)
shapiro.test(female$BMI)

ftest <- var.test(male$BMI, female$BMI, ratio = 1, conf.level = .95)
levene.test(data$BMI, data$Gender, location="mean")
