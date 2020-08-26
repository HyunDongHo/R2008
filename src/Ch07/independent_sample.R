ist <- read.csv('./02.IST.csv', header=T, na.strings='.')
ist$t_group <- factor(ist$t_group,
                      levels=c(1,2),
                      labels=c('A Tire', 'B Tire'))

str(ist)

attach(ist)

tapply(t_time, t_group, summary)

library(psych)
describeBy(t_time, t_group, mat=T)


opar <- par(no.readonly = T)
layout(matrix(c(1,1,2,3), 2,2,byrow=T))
boxplot(t_time ~ t_group)
hist(t_time[t_group='A Tire'])
hist(t_time[t_group='B Tire'])
par(opar)

var.test(t_time ~ t_group, data = ist)

t.test(t_time ~ t_group, 
       data= ist,
       alternative=c('two.sided'),
       var.equal = F,
       conf.level = 0.95)

detach(ist)
x = 48670.57
se = 658.5
data <- rnorm(1000, x, se)
data <- sort(data)
plot(data, dnorm(data, x, se), col='blue', type='l', main='회사별 타이어 수명', xlim=c(45000, 55000), ylim=c(0,0.0006))
abline(v=x, col='green', lty=3)

par(new=T)

x=51377.6
se=766.37
data=rnorm(1000,x,se)
data=sort(data)
plot(data, dnorm(data, x, se), type='l', col='red', xlim=c(45000,55000), ylim=c(0,0.0006))
abline(v=x, col='red', lty=3)
