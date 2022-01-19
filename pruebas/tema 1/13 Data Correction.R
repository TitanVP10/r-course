install.packages('tidyr')
library(tidyr)

crime_data <- read.csv('r-course/data/tema1/USArrests.csv', 
                       stringsAsFactors = FALSE)

# View(crime_data)

# Añadir columnas
crime_data <- cbind(state = rownames(crime_data), crime_data)

crime_data1 <- gather(crime_data,
                      key = 'crime_type', 
                      value = 'arrest_estimate',
                      Murder : UrbanPop) # el rango de las columnas que queremos reunir


crime_data2 <- gather(crime_data,
                      key = 'crime_type', 
                      value = 'arrest_estimate',
                      -state)

crime_data3 <- gather(crime_data,
                      key = 'crime_type', 
                      value = 'arrest_estimate',
                      Murder, Assault)

crime_data4 <- spread(crime_data2,
                      key = 'crime_type', 
                      value = 'arrest_estimate')

# UNITE BUENO POR EJEMPLO PARA UNIR CUANDO TIENES UNA COLUMNA DE NOMBRE Y UNA DE APELLIDO SEP = ' '
crime_data5 <- unite(crime_data,
                     col = 'Murder_Assault',
                     Murder, Assault,
                     sep = '_')

crime_data6 <- separate(crime_data5,
                     col = 'Murder_Assault',
                     into = c('Murder', 'Assault'),
                     sep = '_')



















