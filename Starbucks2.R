library(ggplot2)
library(readxl)
#setwd("Your Folder Name")
Starbucks<- read_excel("Starbucks.xlsx")
cor(Starbucks)
fit <- lm(Starbucks)
res <- residuals(fit)
summary(fit)

fit2 = lm(Starbucks$Amount ~ Starbucks$Income)
res = residuals(fit)

summary(fit)