pst <- read.csv('./03.PST.csv', header=T, na.strings='.')

str(pst)

attach(pst)

library(psych)
describe(pst)

dif=c(post-pre)

describe(dif)

opar <- par(no.readonly = T)

layout(matrix(c(1,2,3,3), 2,2, byrow=T))
hist(pre, main='사전')
hist(post, main='사후')
boxplot(dif, main='몸무게차이')
par(opar)

t.test(post, pre, alternative = c('two.sided'),
       paired = T, conf.level=0.95)


mu= 0
se=0.7
data <- rnorm(1000,mu,se)
data <- sort(data)
plot(data, dnorm(data,mu, se), type='l', main='몸무게차이 검정', xlim=c(-3, 3))
abline(v=mu, col='green', lty=5)
abline(v=mu+1.96*se, col='blue', lty=5)
abline(v=mu-1.96*se, col='blue', lty=5)
abline(v=-2.55, col='red', lty=5)
