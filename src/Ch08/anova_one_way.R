owaData <- read.csv('04.owa.csv', header=T, na.strings='.')
owaData$group <- factor(owaData$group, levels=c(1:4), labels=c('강남','강서','강동','강북'))

str(owaData)

attach(owaData)

library(psych)

describeBy(score, group, mat=T)

library(ggplot2)
ggplot(owaData, aes(x=group, y=score)) + geom_boxplot(outlier.color='red') + ggtitle('매장별 만족도') + theme_classic() + theme(title=element_text(color='darkblue', size=20))

ggplot(owaData, aes(x=score)) + geom_histogram(binwidth=10) + facet_grid(. ~ group) + ggtitle('매장별 만족도') + theme_classic()

bartlett.test(score ~ group, data=owaData)

install.packages('car')
library(car)
leveneTest(score ~ group, data=owaData, center=mean)

owaResult <- aov(score ~ group, data=owaData)
summary(owaResult)

TukeyHSD(owaResult)

install.packages('agricolae')
library(agricolae)

duncan.test(owaResult, 'group', group=T, console=T)
scheffe.test(owaResult, 'group', group=F, console=T)

tukeyPlot <- TukeyHSD(owaResult)
plot(tukeyPlot)

duncanPlot <- duncan.test(owaResult, 'group')
plot(duncanPlot)

x=88.87
se=1.34
data <- rnorm(1000, x, se)
data <- sort(data)
plot(data, dnorm(data, x, se), col='blue', type='l', main='매장별 고객 만족도', xlim=c(75,95), ylim=c(0, 0.3))
abline(v=x, col='blue', lty=3)
par(new=T)
x=82
se=2.05
data<-rnorm(1000, x, se)
data<-sort(data)
plot(data, dnorm(data, x, se), type='l', col='green', xlim=c(75, 95), ylim=c(0, 0.3))
abline(v=x, col='green', lty=3)
