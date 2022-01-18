install.packages('scales')
library(scales)

students <- read.csv('r-course/data/tema1/data-conversion.csv')

# rescale <-  asigna el valor más bajo y se vuelve 0, el más alto 1, y los demás a proporción
students$Income.rescaled <- rescale(students$Income)

# lo mismo que arriba, todos entre 0 y 1
(students$Income - min(students$Income)) / (max (students$Income) - min(students$Income))

rescale(students$Income, to = c(0,100))

rescale.many <- function(dataframe, cols){
  names <- names(dataframe)
  for (col in cols){
    name <- paste(names[col], 'rescaled', sep = '.')
    dataframe[name] <- rescale(dataframe[,col])
  }
  cat(paste('Hemos reescalado ', length(cols), ' variables'))
  dataframe
}

students <- rescale.many(students, c(1,4))
 