# Dada una variable aleatoria normal X, con media mu=30 y desviación estándar sigma = 6, obtenga:

mu = 30
sigma = 6

# Grafico a modo de guia
x = seq(0, 60, 0.001)
y = dnorm(x, mu, sigma)
plot(x, y, type='s', lty=1, lwd=2, main='Distribucion normal', ylab='f(x)', xlab='x')

# a) el área bajo la curva a la derecha de x=17;
pa = 1 - pnorm(17, mu, sigma)
print(paste('P( X > 17 ) = ', pa))


# b) P(X<22);
pb = pnorm(22, mu, sigma)
print(paste('P( X > 22 ) = ', pb))

# c) el cuantil que tiene el 80% del área bajo la curva a su izquierda;
qc = qnorm(0.8, mu, sigma)
print(paste('P( X < q ) = 0.8 => q = ', qc))


# d) P(24<X<36);
pd = pnorm(36, mu, sigma) - pnorm(24, mu, sigma)
print(paste('P( 24 < X < 36 ) = ', pd))


# e) el valor del cuantil k, tal que P(X<k)=0,2236;
qe = qnorm(0.2236, mu, sigma)
print(paste('P( X < q ) = 0.2236 => q = ', qe))


# f) el valor del cuantil k, tal que P(X>k)=0,1814.
qf = qnorm(1 - 0.1814, mu, sigma)
print(paste('P( X > q ) = 0.1814 => q = ', qf))
