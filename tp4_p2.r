# Se sabe que el tiempo que tarda en llegar un cliente a cierta caja registradora tiene una
# distribución uniforme y que durante un periodo mínimo de treinta minutos seguramente llegó
# un cliente a la caja.

# e) ¿Cuál es la probabilidad de que un cliente llegue a la caja durante los últimos cinco
# minutos de ese periodo de treinta minutos?

llega_mayor_25 = 1 - punif(25, 0, 30)
print(paste("P( X > 25 ) = ", llega_mayor_25))

# Si en un dado momento se pone en funcionamiento la caja, ¿cuál es la probabilidad de
# que llegue un cliente durante los primeros cinco minutos?

llega_menor_5 = punif(5, 0, 30)
print(paste("P( X < 5 ) = ", llega_menor_5))

