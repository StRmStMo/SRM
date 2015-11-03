# figur16-well

# mit package car

library(car)

###

# Stichproben erzeugen
# Fuer Reproduktion mit fester seed

set.seed(1234)
x <- rnorm(100)

set.seed(1234)
y <- rexp(100)

par(mfrow=c(1,2))

#  col.lines=palette()[1] schwarze Sollgerade und KI

#qq.plot(x,dist="norm",envelope=.99, col=palette()[1], col.lines=palette()[1], 
qqPlot(x,dist="norm",envelope=.99, col=palette()[1], col.lines=palette()[1], 
main="Normal Q-Q-Plot", 
xlab="theoretische Standardnormal-Quantile",
ylab="empirische Quantile")


#qq.plot(y,dist="exp",envelope=.99, col=palette()[1], 
qqPlot(y,dist="exp",envelope=.99, col=palette()[1], col.lines=palette()[1], 
main="Exponential Q-Q-Plot", 
xlab="theoretische Standardexponential-Quantile",
ylab="empirische Quantile")