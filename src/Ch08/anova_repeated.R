rmaData = read.csv('./05.RMA.csv', header=T, na.strings='.')

str(rmaData)

rmaData$time <- factor(rmaData$time,
                       levels = c(1:3),
                       labels = c('사전', '3개월', '6개월'))
par(mfrc=c(1,1))
attach(rmaData)
library(psych)

describeBy(score, time, mat=T)

boxplot(score~time, data=rmaData, ylab='score', xlab='time')

library(car)
rmaMatrix <- cbind(score[time=='사전'], score[time=='3개월'], score[time=='6개월'])
rmaModelLm <- lm(rmaMatrix ~ 1)
timeF <- factor(c('사전', '3개월', '6개월'))
options(contrasts=c('contr.sum', 'contr.poly'))
rmaResultMt <- Anova(rmaModelLm, idata=data.frame(timeF), idesign=~timeF, type='III')
summary(rmaResultMt, multivariate=F)


rmaResult <- aov(score ~ time+Error(id/time), data=rmaData)
summary(rmaResult)


install.packages('multcomp')
library(multcomp)

resultLm <- lm(score ~ time)
TukeyResult <- glht(resultLm, linfct=mcp(time='Tukey'))
summary(TukeyResult)
