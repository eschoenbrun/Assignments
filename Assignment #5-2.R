data <-  read.csv('data.csv', header=TRUE)
results <- data$result
temp <- data$temp
det <- data$det

tapply(results, temp, mean)
tapply(results, det, mean)
tapply(results, det:temp, mean)

model <- lm(results ~ det*temp)
anova(model)

interaction.plot(det, temp, results)
interaction.plot(temp, det, results)