# El tiempo de un viaje (ida y vuelta) de los camiones que transportan concreto hacia una
# obra de construcción en una carretera, está distribuida uniformemente en un intervalo de 50 a
# 70 minutos.

# X: "Tiempo de viaje de los camiones que transportan concreto"
# X ~ U(50, 70)

# c) Represente gráficamente la función de densidad y la función de distribución de
# probabilidad acumulada.

# fc. de densidad
x = seq(0, 100, .1)
yd = dunif(x, 50, 70)
plot(x, yd, type="l", col="navyblue", lwd=2)

# fc. acumulada
ya = punif(x, 50, 70)
plot(x, ya, type="l", col="navyblue", lwd=2)

# d) ¿Cuál es la probabilidad de que la duración del viaje sea mayor a 55 minutos?
# Represente en ambas gráficas esta probabilidad.

plot(x, yd, type="b", col="navyblue", lwd=1, pch=0.1)
viaje_mayor_55 = 1 - punif(55, 50, 70)
abline(v=55, lty="dotted")
abline(v=70, lty="dotted")

print(paste("P( X > 55 ) = ", viaje_mayor_55))

# e) ¿Cuál es la probabilidad de que la duración del viaje este entre 55 a 66 minutos?

viaje_entre_55_y_66 = punif(66, 50, 70) - punif(55, 50, 70)
print(paste("P( 55 < X < 66 ) = ", viaje_entre_55_y_66))

# f) ¿Cuál es el valor esperado de la duración del viaje?
# E(X) = (a + b)/2 

# g) ¿Con qué desviación estándar estamos trabajando?
# DE(X) = sqrt( (b - a)^2 / 12 )
