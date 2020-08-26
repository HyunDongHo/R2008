ost <- read.csv('./01.OST.csv', header=T, na.strings = '.')
str(ost)

ost<-round(ost, 2)
attach(ost)
library(psych)
describe(ost)

opar <-par(no.readonly = T)
par(mfrow=c(1, 2))
boxplot(weight)

library(ggplot2)
ggplot(data=ost, aes(x=weight)) + 
par(mfrow=c(1, 1))
hist(weight, breaks=20, col='red', xlab='무게', ylab='개수', ylim=c(0,25), main='아이스크림 무게 정규분포')

options=('scipen'=20)
t.test(ost,
       alternative=c('two.sided'),
       mu=320,
       conf.level=0.05)

mu=320
se=2
data<-rnorm(1000, mu, se)
plot(data, dnorm(data, mu, se), type='l',
     main='아이스크림 무게 검정',
     xlim(290,330))
abline(v=mu, col='green', lty=5)
abline(v=mu+1.96*se, col='blue', lty=5)
abline(v=mu-1.96*se, col='blue', lty=5)
abline(v=295.44, col='red', lty=5)
