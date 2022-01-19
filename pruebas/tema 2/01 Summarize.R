data <- read.csv('r-course/data/tema2/auto-mpg.csv',
                 header = TRUE, 
                 stringsAsFactors = FALSE)

data$cylinders <- factor(data$cylinders, 
                         levels = c(3,4,5,6,8),
                         labels = c('3cil','4cil','5cil','6cil','8cil') )
summary(data)

str(data)

install.packages(c('modeest','moments','raster'))

library(modeest) # moda
library(raster)  # quantiles cv
library(moments) # asimetría, curtosis

### MEDIDAS DE CENTRALIZACIÓN

x <- data$mpg

mean(x)
median(x)
mfv(x) # most frecuent value

quantile(x)

### MEDIDAS DE DISPERSIÓN
var(x)
sd(x)
cv(x) #desv est / mean * 100 porque es porcentaje













