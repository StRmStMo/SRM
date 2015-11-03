# ------------------------------------------------------------------------------
# Project:     SRM - Stochastische Risikomodellierung und statistische Methoden
# ------------------------------------------------------------------------------
# Quantlet:    SRM_fig5.5
# ------------------------------------------------------------------------------
# Description: Produces the plots of evaluating denisities of Archimedean copulae
# under (size=500, size of parameters=3, dimension=2) and (size=500, size of 
# parameters=6, dimension=2).
# ------------------------------------------------------------------------------
# Keywords:    plot, time-series, Archimedean, density, visualization
# ------------------------------------------------------------------------------
# See also:
# ------------------------------------------------------------------------------
# Author:      Becker
# ------------------------------------------------------------------------------

## clear history

# figur5.5-becker

# mit package QRM

library(QRM)

###

plot(rcopula.clayton(500,3,2), pch = 19, ann = F, cex = 0.6, cex.axis = 0.6)
plot(rcopula.frank(500,6,2), pch = 19, ann = F, cex = 0.6, cex.axis = 0.6)