housing_data <- read.csv('r-course/data/tema1/housing-with-missing-value.csv', header = TRUE, stringsAsFactors = FALSE)

summary(housing_data)

housing_data_1 <- na.omit(housing_data)
summary(housing_data_1)

# Hay NA's en rad y pratio


# Eliminar NA de ciertas columnas

drop_na <- c('rad')

housing_data_2 <- housing_data[
  complete.cases(housing_data[,!(names(housing_data))%in% drop_na]),]

summary(housing_data_2)

# Eliminar toda una columna

housing_data$rad <- NULL

drops <- c('rad','ptratio')

housing_data_3 <- housing_data[,!(names(housing_data))%in% drops]

install.packages('Hmisc')

library(Hmisc)

housing_data_copy1 <- housing_data

#### IMPUTE BUENÍSIMO PARA CAMBIAR NA's por el valor que yo quiera.
 
housing_data_copy1$ptratio <- impute(housing_data_copy1$ptratio, mean)
housing_data_copy1$rad <- impute(housing_data_copy1$rad, mean)

housing_data_copy2 <- housing_data
housing_data_copy2$ptratio <- impute(housing_data_copy2$ptratio, median)
housing_data_copy2$rad <- impute(housing_data_copy2$rad, median)

housing_data_copy3 <- housing_data
housing_data_copy3$ptratio <- impute(housing_data_copy2$ptratio, 18)
housing_data_copy3$rad <- impute(housing_data_copy2$rad, 7)

summary(housing_data_copy3)
summary(housing_data)
 
install.packages('mice')
library(mice)

# Nos indica que NA's, que hay 431 filas que están completas, 35 que faltan solo PTRATIO, 35 de RAD y 5 donde faltan ambos 
md.pattern(housing_data)

install.packages('VIM')
library(VIM)
aggr(housing_data,
     col = c('green','red'),
     numbers = TRUE,
     sortVars = TRUE,
     labels = names(housing_data),
     cex.axis = 1,
     gap = 2,
     ylab = c('Proporción de NA', 'Patrón NA'))























