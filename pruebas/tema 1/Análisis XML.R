install.packages('XML')
library(XML)

url <- "/Users/Ethan/Desktop/R Data Science/r-course/data/tema1/cd_catalog.xml"

xmldoc <- xmlParse(url) # XMLInternalDocument en C

rootnode <- xmlRoot(xmldoc)

rootnode[1]

# PASO INTERMEDIO
cds_data <-  xmlSApply(rootnode, function(x) xmlSApply(x,xmlValue))

# Data Frame final
cds.catalog <- data.frame(t(cds_data), row.names = NULL) 

head(cds.catalog)

#Primer 5 filas, todas las columnas
cds.catalog[1:5,]
