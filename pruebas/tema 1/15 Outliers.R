ozone_data <- read.csv('r-course/data/tema1/ozone.csv', stringsAsFactors = FALSE)

boxplot(ozone_data$pressure_height,
        main = 'Pressure Height',
        boxwex = 1)


boxplot(pressure_height ~ Month,
        data = ozone_data,
        main = 'Pressure Height per Month',
        ylab = 'Pressure Height')

boxplot(ozone_reading ~ Month,
        data = ozone_data,
        main = 'ozone_reading per Month',
        ylab = 'ozone_reading')$out # el $out me saca en consola los outliers


impute_outliers <- function(x, removeNA = TRUE){
   quantiles <- quantile(x, c(0.05, 0.95), na.rm = removeNA)
   x[x<quantiles[1]] <-  mean(x, na.rm = removeNA)
   x[x>quantiles[2]] <-  mean(x, na.rm = removeNA)
   
   x
}


imputed_data <- impute_outliers(ozone_data$pressure_height)

par(mfrow = c(1,2))

boxplot(ozone_data$pressure_height,
        main = 'Pressure Height con Outliers')
boxplot(imputed_data,
        main = 'Pressure Height sin Outliers')


replace_outliers <- function(x, removeNA = TRUE){
  qnts <-  quantile(x, probs = c(0.25,0.75), na.rm = removeNA)
  caps <- quantile(x, probs = c(0.05,0.95), na.rm = removeNA)
  iqr <- qnts[2] - qnts[1]
  h <- 1.5 * iqr
  
  x[x<qnts[1]-h] <-  caps[1]
  x[x>qnts[2]+h] <-  caps[2]
  x
}

capped_pressure_height <- replace_outliers(ozone_data$pressure_height)

par(mfrow = c(1,2))

boxplot(ozone_data$pressure_height,
        main = 'Pressure Height con Outliers')
boxplot(capped_pressure_height,
        main = 'Pressure Height sin Outliers')


 





