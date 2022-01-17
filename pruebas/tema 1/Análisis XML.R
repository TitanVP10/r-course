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

population_url <- '../R Data Science/r-course/data/tema1/WorldPopulation-wiki.htm'
tables <- readHTMLTable(population_url)


most_populated <- tables[[6]]
head(most_populated, 3)

custom_table <- readHTMLTable(population_url, which = 6)

