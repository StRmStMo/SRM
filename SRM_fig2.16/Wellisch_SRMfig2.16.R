# ------------------------------------------------------------------------------
# Project:     SRM - Stochastische Risikomodellierung und statistische Methoden
# ------------------------------------------------------------------------------
# Quantlet:    SRM_fig2.14
# ------------------------------------------------------------------------------
# Description: Produces the QQ plots for four simulated samples of 
#              N(0,1), N(5,1), N(0,9) and N(5,9). QQ-plots compare empirical 
#              quantiles of a distribution with theoretical quantiles of the 
#              standard normal distribution.
# ------------------------------------------------------------------------------
# Keywords:    plot, time-series, graphical representation, visualization,
#              bond,
# ------------------------------------------------------------------------------
# See also:
# ------------------------------------------------------------------------------
# Author:      Wellisch
# ------------------------------------------------------------------------------

## clear history
rm(list = ls(all = TRUE))
graphics.off()

## install and load packages
libraries = c("zoo")
lapply(libraries, function(x) if (!(x %in% installed.packages())) {
  install.packages(x)
})
lapply(libraries, library, quietly = TRUE, character.only = TRUE)

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