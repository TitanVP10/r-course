library(mice)

housing_data <- read.csv('r-course/data/tema1/housing-with-missing-value.csv', header = TRUE, stringsAsFactors = FALSE)

columns <- c('ptratio','rad')

imputed_data <- mice(housing_data[,columns])

imputed_data <- mice(housing_data[,names(housing_data)%in% columns],
                     m = 5,
                     maxit = 50,
                     method = 'pmm',
                     seed = 2018) # predictive mean matching

summary(imputed_data)

## pmm - comparación predictiva de medias
## logreg - regresión logística
## polyreg - regresión politómica
## polr - modelo de probabilidades proporcionales

# complete es de mice, curl también tiene un complete, la soluci´no es indicar el paquete que quiero utilizar
complete_data <- mice::complete(imputed_data)

summary(complete_data)

# cambiamos las columnas sin NA por la columna original con NA's
housing_data$ptratio <- complete_data$ptratio
housing_data$rad <- complete_data$rad


# Revisar si hay NA's en el dataframe
anyNA(housing_data)

library(Hmisc)
housing_data <- read.csv('r-course/data/tema1/housing-with-missing-value.csv',
                         header = TRUE, stringsAsFactors = FALSE)

impute_arg <- aregImpute(~ptratio + rad, data = housing_data, n.impute = 5)
summary(impute_arg)

impute_arg



















