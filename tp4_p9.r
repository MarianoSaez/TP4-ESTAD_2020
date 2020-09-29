# El tiempo, en minutos, que se tarda en atender a un individuo en una oficina pública es una
# variable aleatoria exponencial con un valor medio de 4 mins.

# X ~ Exp( lambda = 0.25 )

# a) Enuncie la variable en estudio, plantee su distribución y su/s parámetros.
# T: " Tiempo que se tarde en atender a un individuo en una oficina medido en mins. "

lambda = 0.25

# b) De su función de probabilidad. Grafique.
x = seq(0, 50, 0.001)
y_densidad = dexp(x, lambda)
plot(x, y_densidad, type='l', lty=1, lwd=2, main='Tiempo en minutos para ser atendido', ylab='f(t)', xlab='minutos')


# c) Encuentre su función de distribución acumulada. Grafique.
y_acumulada = pexp(x, lambda)
plot(x, y_acumulada, type='l', lty=1, lwd=2, main='Tiempo en minutos para ser atendido', ylab='f(t)', xlab='minutos')


# d) Encuentre la probabilidad de que una persona tenga que esperar para ser atendida
# en una oficina pública más de 5 minutos, utilizando la función de distribución
# acumulada.



# e) Idem d) utilizando la función de densidad.
# f) Encuentre la probabilidad de que una persona sea atendida en exactamente 2
# minutos.
# g) Encuentre la probabilidad de que una persona sea atendida en menos de tres
# minutos.
# h) ¿Cuál es la probabilidad de que una persona sea atendida en menos de tres minutos,
# en al menos 4 de los 5 días hábiles de la semana?