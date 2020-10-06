# El tiempo de vida (en horas) de cierto tipo de tubo electrónico es una variable aleatoria con una
# distribución exponencial de λ=0,02. Se pide:

# X: "tiempo de vida (en horas) de cierto tipo de tubo electrónico"
# λ=0,02

lambda = 0.02

# a)
# Encuentre la función de densidad y grafíquela.
t = seq(0, 500, 0.0001)
ya = dexp(t, 0.02)
plot(t, ya, type='l', lty=1, lwd=2, main='Tiempo de vida de un tubo electronico', xlab='horas', ylab='f(x)')


# b)
# ¿Cuál es el tiempo de vida que se espera que tenga este tipo de tubo electrónico?
# Calcular esperanza

# c)
# ¿Cuál es su desviación estándar? Interprete.
# Calcular DE(X)

# d)
# Hallar la función de distribución y grafíquela.
yd = pexp(t, 0.02)
plot(t, yd, type='l', lty=1, lwd=2, main='Tiempo de vida de un tubo electronico', xlab='horas', ylab='F(x)')


# e)
# Hallar la probabilidad de que la vida de uno de esos tubos sea a lo sumo de 30 horas.
pe = pexp(30, 0.02)
print(paste('P( X >= 30 ) = ', pe))

# f)
# Hallar la probabilidad de que la vida de uno de esos tubos dure menos de cien horas y
# más de 30 horas.
pf = pexp(100, 0.02) - pexp(30, 0.02)
print(paste('P( 30 > X > 100 ) = ', pf))


# g)
# ¿Cuál es el tiempo de vida máximo que tienen el 25% de aquellos tubos electrónicos
# que menos tiempo duran?
pg = qexp(0.25, 0.02)
print(paste('P( X < k ) = 0.25 => k = ', pg))


# h)
# Halle bajo que cuantil estará el 30% de los tubos electrónicos que menos tiempo de vida
# tienen.
ph = qexp(0.3, 0.02)
print(paste('P( X < k ) = 0.3 => k = ', ph))