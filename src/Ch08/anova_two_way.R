twaData <- read.csv('./06.TWA.csv', header=T, na.strings='.')
str(twaData)
twaData$time = factor(twaData$time, levels=c(1, 2), labels=c('10분','20분'))
twaData$temp = factor(twaData$temp, levels=c(1, 2), labels=c('1000도', '1500도'))

attach(twaData)

library(psych)
describeBy(taste, time:temp, mat=T)

plot(taste ~ time + temp, data=twaData)
boxplot(taste ~ time*temp, data=twaData)

twaResult <- aov(taste ~time+temp+time:temp, data=twaData)
summary(twaResult)

interaction.plot(time, temp, taste)

tw10 <- twaData[twaData$time=='10분',]
tw20 <- twaData[twaData$time=='20분',]

t.test(taste ~ temp, data=tw10, alternative=c('two.sided'), var.equal=T, conf.level=0.95)

t.test(taste ~ temp, data=tw20, alternative=c('two.sided'), var.equal=T, conf.level=0.95)
