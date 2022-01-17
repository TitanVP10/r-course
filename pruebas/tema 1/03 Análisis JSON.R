install.packages('jsonlite')
library(jsonlite)

dat.1 <- fromJSON('r-course/data/tema1/students.json')
head(dat.1, 5)

dat.2 <- fromJSON('r-course/data/tema1/student-courses.json')
head(dat.2, 5)

url <- "http://www.floatrates.com/daily/usd.json"
monedas <- fromJSON (url) 
json_file1 <- lapply (monedas, function (x) {unlist (x) })
df = as.data.frame (t (as.data.frame (json_file1)), row.names = FALSE)

