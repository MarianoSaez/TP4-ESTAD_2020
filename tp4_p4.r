# Si X se encuentra distribuida normalmente con media 12 y desviación estándar 2, calcular la
# probabilidad de que:

mu = 12
sigma = 2

# Grafico a modo de guia
x = seq(0, 26, 0.001)
y = dnorm(x, mu, sigma)
plot(x, y, type='s', lty=1, lwd=2, main='Distribucion normal', ylab='f(x)', xlab='x')

# a) X > 14
pa = 1 - pnorm(14, mu, sigma)
print(paste('P( X > 14 ) = ', pa))


# b) X > 11
pb = 1 - pnorm(11, mu, sigma)
print(paste('P( X > 11 ) = ', pb))


# c) X < 10
pc = pnorm(10, mu, sigma)
print(paste('P( X < 10 ) = ', pc))


# d) X < 15
pd = pnorm(15, mu, sigma)
print(paste('P( X < 15 ) = ', pd))


# e) 10 < X < 13
pe = pnorm(13, mu, sigma) - pnorm(10, mu, sigma)
print(paste('P( 10 < X < 13 ) = ', pe))


# f) 9 < X < 11
pf = pnorm(11, mu, sigma) - pnorm(9, mu, sigma)
print(paste('P( 9 < X < 11 ) = ', pf))


# g) 13 < X < 15
pg = pnorm(15, mu, sigma) - pnorm(13, mu, sigma)
print(paste('P( 13 < X < 15 ) = ', pg))

# h) 11 < X < 13
ph = pnorm(13, mu, sigma) - pnorm(11, mu, sigma)
print(paste('P( 11 < X < 13 ) = ', ph))

# i) Percentil de orden 23
qi = qnorm(0.23, mu, sigma)
print(paste('P( X < q ) = 0.23 => q = ', qi))

# j) Percentil de orden 67
qj = qnorm(0.67, mu, sigma)
print(paste('P( X < q ) = 0.67 => q = ', qj))

# k) Entre qué valores se encuentra el 50% de la población alrededor de la media.
pq2 = 0.25 + pnorm(12, mu, sigma)
q2 = qnorm(pq2, mu, sigma)

print(paste('P( X < q2 ) = ', pq2, ' => q2 = ', q2))