housing <- read.csv('r-course/data/tema1/BostonHousing.csv')

housing.z <- scale(housing, center = TRUE, scale = TRUE)

# NO SE DIVIDE SOBRE DESVIACIÓN
housing.mean <- scale(housing, center = TRUE, scale = FALSE)

# NO SE LE RESTA LA MEDIA
housing.sd <- scale(housing, center = FALSE, scale = TRUE)

housing.none <- scale(housing, center = FALSE, scale = FALSE)

rescale.many <- function(dataframe, cols){
  names <- names(dataframe)
  for (col in cols){
    name <- paste(names[col], 'z', sep = '.')
    dataframe[name] <- scale(dataframe[,col])
  }
  cat(paste('Hemos normalizado ', length(cols), ' variables'))
  dataframe
}

students <- rescale.many(students, c(1,4))
