clientes <- c('Juan','Ricardo','Pedro')

fechas <- as.Date(c("2017-12-17", "2017-11-1", "2018-1-1"))

pago <- c(315,192.55,40.15)

pedidos <- data.frame(clientes,fechas,pago)

save(pedidos, file = 'r-course/data/tema1/pedidos2.Rdata')
saveRDS(pedidos, file = 'r-course/data/tema1/pedidos3.rds')

load('r-course/data/tema1/pedidos.Rdata')

orders <- readRDS('r-course/data/tema1/pedidos.rds')

data(iris)
data(cars)

# guardar todas las opciones de la sesión

# save.image(file = 'r-course/data/tema1/alldata.Rdata' )

primes <- c(2,3,5,7,11,13)
pow2 <- c(2,4,8,16,32,64,128)
save(list = c('primes', 'pow2'), file = 'r-course/data/tema1/prime_and_pow2.Rdata')







