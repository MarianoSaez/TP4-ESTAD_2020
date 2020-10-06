#  Suponga que el tiempo, en horas, que toma reparar una bomba es una variable aleatoria X
# que tiene una distribución gamma con parámetros alpha = 2 y betta = ½.
# a) Plantee la función de densidad de la variable aleatoria X.

alpha = 2
betta = 2


# b) Grafique la función de densidad utilizando R.
x = seq(0, 25, 0.001)
y = dgamma(x, alpha, betta)
plot(x, y, type='l', lwd=2, main='Reparacion de bomba', xlab='Tiempo en horas')

# c) Encontrar la media y la desviación estándar.
mu = 1
sigma = (sqrt(2))/(2)

# d) ¿Cuál es la probabilidad de que en el siguiente servicio tome más de 1 hora reparar la
# bomba?
pd = 1 - pgamma(1, alpha, betta)
print(paste('P( X > 1 ) = ', pd))

# e) ¿Cuál es la probabilidad de que en el siguiente servicio al menos se requieran 2 horas
# para reparar la bomba?
pe = 1 - pgamma(2, alpha, betta)
print(paste('P( X < 2 ) = ', pe))

# f) ¿Cuál es la probabilidad de que en el siguiente servicio el tiempo que toma reparar una
# bomba sea menor que la media?
pf = pgamma(mu, alpha, betta)
print(paste('P( X < mu ) = ', pf))

# g) Encontrar la probabilidad de que el tiempo que toma reparar una bomba se encuentre
# dentro de una desviación estándar de la media.
pg = pgamma(mu+sigma, alpha, betta) - pgamma(mu-sigma, alpha, betta)
print(paste('P( mu-sigma < X < mu+sigma ) = ', pg))

# h) Calcule el percentil 0,60 e interprete en términos del problema. 
qh = qgamma(0.6, alpha, betta)
print(paste('P( X > k ) = 0.6 => k = ', qh))