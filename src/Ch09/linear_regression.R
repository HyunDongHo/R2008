regData <- read.csv('./08.CORR.csv', header=T, na.strings='.')

str(regData)

attach(regData)

regData <- regData[c(-61:-62),]
plot(fat ~ col, data=regData)
abline(lm(fat ~ col, data =regData), col='red', lty=4)

regModel<-lm(fat~col, data=regData)
anova(regModel)
summary(regModel)

plot(regModel)


shapiro.test(regModel$residuals)
library(car)
influencePlot(regModel, id.moethod='identify')
