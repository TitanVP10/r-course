students <- read.csv('r-course/data/tema1/data-conversion.csv')

bp <- c(-Inf, 10000, 31000, Inf)

names <- c('Low', 'Average', 'High')

students$Income.cat <- cut(students$Income, breaks = bp, labels = names)
students$Income.cat2 <- cut(students$Income, breaks = bp)
students$Income.cat3 <- cut(students$Income, breaks = 4, labels = c('L1','L2','L3','L4'))

students <- read.csv('r-course/data/tema1/data-conversion.csv')
install.packages('dummies')
library(dummies)

students.dummy <- dummy.data.frame(students, sep = '.')
names(students.dummy)

dummy(students$State, sep = '.')

dummy.data.frame(students, c('State', 'Gender'), sep = '.')
