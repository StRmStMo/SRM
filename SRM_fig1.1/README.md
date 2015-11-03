
![http://quantnet.wiwi.hu-berlin.de/style/banner.png](http://quantnet.wiwi.hu-berlin.de/style/banner.png)

## ![qlogo](http://quantnet.wiwi.hu-berlin.de/graphics/quantlogo.png) **SRM_fig1.1**


```yaml

Name of QuantLet : SRMfig1.1

Published in : SRM

Description : 'Produces the curves for the binomial distribution function and the pseudoinverse function under the probability=0.4 and the size=5.'

Keywords : 'plot, curve, binomial, distribution, funciton, visualization'

See also : 

Author : Sandor

Submitted :

Datafile : 

Example : 'Produces the curves of binomial distribution function with the parameters size and probability. '

```

![Picture1](Sandor_SRMfig1.1.png)

```R
## clear history

########################################
#Zeichne die verallg. Inf fuer B(5,0.4) #
########################################

par(mfrow=c(1,2)) #zwei Bilder nebeneinader
p<-0.4
n<-5
curve(pbinom(x,n,p), from = -1, to = 6, type = "s", ylab = expression(), lwd = 3, col = "black")
title("Verteilungsfunktion")
curve(qbinom(x,n,p), from = 0, to = 1, type = "s", ylab = expression(), xlab = expression(u), lwd = 3, col = "black")
title("Pseudoinverse")
par(mfrow=c(1,1)) 
#wieder nur ein Bild
```
