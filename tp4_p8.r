# El tiempo de trabajo sin falla de un elemento está distribuido por la ley exponencial
# f(t)=0,01 . exp(-0,01.t) donde t es el tiempo en horas. Hallar la probabilidad de que el elemento
# trabaje sin fallas por lo menos 100 horas.

lambda = 0.01

# Grafico
x = seq(0, 1000, 0.001)
y = dexp(x, 0.01)
plot(x, y, type='l', lwd=2)
lines(100, dexp(100, lambda), lty=5, type='h', col='green')

# Probabilidad de que trabaje al menos 100 horas
prob_minimo_100horas = 1 - pexp(100, lambda)
print(paste('P( T > 100 ) = ', prob_minimo_100horas))