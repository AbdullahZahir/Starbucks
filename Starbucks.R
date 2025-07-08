library(ggplot2)
library(readxl)
#setwd("Your Folder Name")
Starbucks<- read_excel("Starbucks.xlsx")
cor(Starbucks)
ggplot(Starbucks, aes(x = Income, y = Amount)) + geom_point() + geom_smooth(method = 'lm')

fit2 <- lm(Starbucks$Amount ~ Starbucks$Income)
res <- residuals(fit2)
summary(fit2)

