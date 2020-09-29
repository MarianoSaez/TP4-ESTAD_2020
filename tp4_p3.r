# Usage:

#      dnorm(x, mean = 0, sd = 1, log = FALSE)
#      pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
#      qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
#      rnorm(n, mean = 0, sd = 1)
     
# Arguments:

#     x, q: vector of quantiles.

#        p: vector of probabilities.

#        n: number of observations. If ‘length(n) > 1’, the length is
#           taken to be the number required.

#     mean: vector of means.

#       sd: vector of standard deviations.

# Dada una variable aleatoria Z que sigue una distribución normal estándar

mu = 0
sigma = 1

x = seq(-4, 4, 0.0001)
y = dnorm(x, mu, sigma)


# a) El área bajo la curva que está a la izquierda de z=1,43;

a = pnorm(1.43, mu, sigma)
print(paste("P( Z < 1.43 ) = ", a))


# b) La probabilidad P(Z>1,96);

b = 1 - pnorm(1.96, mu, sigma)
print(paste("P( Z > 1.96 ) = ", b))


# c) La probabilidad de que la variable aleatoria se encuentre entre la media menos una
# desviación y la media más una desviación estándar. Grafique;

c = pnorm(1, mu, sigma) - pnorm(-1, mu, sigma)
print(paste("P( -1 < Z < 1 ) = ", c ))

# Grafico
plot(x, y, type='l', ylab='f(x)', xlab='z', main='Fc. de distribucion normal estandar')
lines(0, dnorm(0, mu, sigma), type='h', lty=5)

# Lineas delimitadoras
lines(1, dnorm(1, mu, sigma), type='h', lty=5, col='navyblue')
lines(-1, dnorm(-1, mu, sigma), type='h', lty=5, col='navyblue')

# Texto lineas
text(2, dnorm(1, mu, sigma), 'mu + sigma = 1')
text(-2, dnorm(-1, mu, sigma), 'mu - sigma = -1')


# d) Entre que cuantiles se encuentra el 80% de la población alrededor de la media. Grafique;

prob_q1 = 0.4 + pnorm(mu, mu, sigma) 
prob_q2 = pnorm(mu, mu, sigma) - 0.4

q1 = qnorm(prob_q1, mu, sigma)
q2 = qnorm(prob_q2, mu, sigma)

print(paste('P( Z < q1 ) = ', prob_q1))
print(paste('P( Z < q2 ) = ', prob_q2))

print(paste('P( Z < q1 ) = ', prob_q1, ' => q1 = ', q1))
print(paste('P( Z < q2 ) = ', prob_q2, ' => q2 = ', q2))

# Grafico
plot(x, y, type='l', lwd=2, ylab='f(x)', xlab='z', main='Fc. de distribucion normal estandar')
abline(h=0)

# Lineas punteadas de los cuantiles
lines(q1, dnorm(q1, mu, sigma), type='h', lty=5, col='navyblue')
lines(q2, dnorm(q2, mu, sigma), type='h', lty=5, col='navyblue')

# texto de los cuantiles
text(q1+.5, 0.01, round(q1, 4))
text(q2+.5, 0.01, round(q2, 4))


# e) El área bajo la curva entre z= -0,48 y z=1,74

pe = pnorm(1.74, mu, sigma) - pnorm(-0.48, mu, sigma)
print(paste('P( -0.48 < Z < 1,74 ) = ', pe))


# f) El valor del cuantil z tal que el área bajo la curva a la derecha de z es 0,3622;

qf = qnorm( 1 - 0.3622, mu, sigma )
print(paste( 'P( Z < q ) = ', 1 - 0.3622, ' => q = ', qf ))


# g) El cuantil 0,30;

qg = qnorm(.3, mu, sigma)
print(paste( 'q = ', qg ))


# h) El valor k tal que P(Z>k)=0,2946;

qh = qnorm(0.2946, mu, sigma)
print(paste('P( Z > k ) = 0,2946 => k = ', qh))


# i) El valor k tal que P(-0,93<Z<k)=0,7235.

qi = qnorm( 0.7235 + pnorm( -0.93, mu, sigma ), mu, sigma )
print(paste( 'P( Z < k ) = ', 0.7235 + pnorm( -0.93, mu, sigma ), ' => k = ', qi ))
