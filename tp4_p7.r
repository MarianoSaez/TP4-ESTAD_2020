# La vida media de un instrumento electrónico es de 6 años con una desviación estándar de 2
# años. Si la vida de un instrumento tal puede tratarse como una variable normal y si el
# instrumento está garantizado, ¿durante cuánto tiempo debiera ser válida la garantía para que no
# más del 15% de los instrumentos fallen antes de la expiración de la ésta?

mu = 6
sigma = 2

# Grafico
x = seq(0, 12, 0.0001)
y = dnorm(x, mu, sigma)
plot(x, y, type='l', lwd=2, main='Tiempo de vida en años de ins. elect.', ylab='f(x)', xlab='años de vida')

lines(mu, dnorm(mu, mu, sigma),type='h', lty=5, col='red')

# Debo calcular el cuantil para X < 15
q15 = qnorm(0.15, mu, sigma)
print(paste('P( X < 15 ) = ', q15))