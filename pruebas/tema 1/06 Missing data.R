data <- read.csv('r-course/data/tema1/missing-data.csv', na.strings = '')

data_cleaned <- na.omit(data)

is.na(data[4,2])
is.na(data[5,2])
is.na(data$Income)

# Limpiar NA de una sola variables o columna
data_income_cleanes <- data[!is.na(data$Income), ]

# Filas completas para un data frame
complete.cases(data)

data_cleaned_2 <- data[complete.cases(data),]

# Convertir los 0 en INCOME en NA
data$Income[data$Income == 0] <- NA

# Medidas de centralización y dispersión
mean(data$Income)
mean(data$Income, na.rm = TRUE)
