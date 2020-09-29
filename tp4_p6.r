# El diámetro del eje de una unidad de almacenamiento óptico tiene una distribución normal con
# media 0,2508 pulgadas y desviación estándar de 0,0005 pulgadas. Las especificaciones del
# diámetro del eje son 0,2500  0,0015 pulgadas. ¿Qué proporción de ejes cumplen con este
# requisito?

mu = 0.2508
sigma = 0.0005

# Grafico
x = seq(.248, .253, 0.0001)
y = dnorm(x, mu, sigma)
plot(x, y, type='l', lwd=2, main='Diametro de eje de CD', ylab='f(x)', xlab='diametro')

# Marca de las especificaciones
lines(0.25, dnorm(0.25, mu, sigma),type='h', lty=5, col='red')
lines(0.2485, dnorm(0.2485, mu, sigma),type='h', lty=5, col='red')
lines(0.2515, dnorm(0.2515, mu, sigma),type='h', lty=5, col='red')


# Probabilidad de que caiga dentro del intervalo de la esp.
prob_cumple_especificaciones = pnorm(.2515, mu, sigma) - pnorm(.2485, mu, sigma)
print(paste('P( 0.2485 < X < 0.2515 ) = ', prob_cumple_especificaciones))
