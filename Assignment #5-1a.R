library(readxl)
library(plyr)

data <- read_excel("C:/Users/Stevens/Desktop/R/654_hwk_5.xlsx",col_names = FALSE)

names(data)[names(data)=="X0"] <- "experience"
names(data)[names(data)=="X1"] <- "days"
names(data)[names(data)=="X2"] <- "percent"

data <-  revalue(data$experience, c("A"=1, "B"=2, "C"=3))

data$experience[which(data$experience=="A")]<-1
data$experience[which(data$experience=="B")]<-2
data$experience[which(data$experience=="C")]<-3

data[, "experience"] <- as.factor(data[, "experience"])
data[, "days"] <- as.factor(data[, "days"])
str(data)

model <- lm(percent ~ experience, data=data)
anova(model)
summary(model)

modelblock <-  lm(percent ~ experience + days, data=data)
anova(modelblock)
summary(modelblock)