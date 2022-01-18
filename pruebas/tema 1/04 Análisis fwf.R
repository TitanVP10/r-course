students_data <- read.fwf('r-course/data/tema1/student-fwf.txt', 
                         widths = c(4,15,20,15,4), # largo de el número de letras de cada columna
                         col.names = c('id','nombre','email','carrera','año') 
)

students_data_header <- read.fwf('r-course/data/tema1/student-fwf-header.txt',
                                 widths = c(4,15,20,15,4),
                                 header = TRUE, sep = '\t', # lo de sep obligatorio con head = true
                                 skip = 2)
