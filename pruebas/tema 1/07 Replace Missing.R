data <- read.csv('r-course/data/tema1/missing-data.csv', na.strings = '')

data$Income[data$Income == 0] <- NA

#data$Income_mean <- ifelse(is.na(data$Income), 
#                                 mean(data$Income, na.rm = TRUE ),
#                                 data$Income) 

# x es un vector de datos que puede contener NA
rand.impute <- function(x) {
  # missing contiene un vector de booleanos dependiendo si x es NA o no
  missing <- is.na(x)  
  
  # n.missing contieen cuántos valores son NA
  n.missing <- sum(missing) 
  
  # x.obs son los valores que tienen dato diferente de NA en x, me quedo con los que existen
  x.obs <- x[!missing]
  
  # por defecto devolveré lo mismo que de entrada
  imputed <- x
  
  # En los valores que faltaban los reemplazamos por una muestra de los que si conocemos
  imputed[missing] <- sample(x.obs, n.missing, replace = TRUE )
  
  return(imputed)
}


random.impute.data.frame <- function(dataframe, cols) {
  names <-  names(dataframe)
  for (col in cols){
    name <- paste(names[col], 'imputed', sep = '.')
    dataframe[name] = rand.impute(dataframe[,col])
  }
  dataframe
}

random.impute.data.frame(data, c(1,2 ))




