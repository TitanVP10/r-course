data <- read.csv('~/Desktop/R Data Science/r-course/data/tema1/auto-mpg.csv', 
                 header = TRUE, sep = ",")

names(data)

auto_mpg_noheader <- read.csv("~/Desktop/R Data Science/r-course/data/tema1/auto-mpg-noheader.csv", 
                              header = FALSE)
head(auto_mpg_noheader, 5)

auto_custom_noheader <- read.csv("~/Desktop/R Data Science/r-course/data/tema1/auto-mpg-noheader.csv", 
                              header = FALSE, 
                              col.names = c('numeros','millas_por_galon', 'cilindrada',
                                            'desplazamiento','caballos_de_potenica','peso',
                                            'aceleracion', 'año', 'modelo'
                                            )
                              )
head(auto_custom_noheader)

# NA <- NOT AVAILABLE

# na.strings <-  para poner como NA correcto los que sean nulos o vacíos


auto_from_internet <- read.csv('https://raw.githubusercontent.com/joanby/r-course/master/data/tema1/WHO.csv')
