# Sea T una variable aleatoria T de Student con 9 grados de libertad, la representación gráfica de
# su función de densidad es la siguiente:

nu = 9

# Hallar el valor del cuantil t 1 para el cual:
# a)
# el área sombreada a la derecha es 0,05
# Si el area total de la f(x) es 1 y el area dada tiene 0.05 hacia la derecha
# del cuantil solicitado, si hago 1 - 0.05 podre calcular el cuantil
# para X < k
ka = qt(1 - 0.05, 9)
print(paste('P( X > k ) = 0.05 => k = ', ka))

# b)
# el área total sombreada es 0,95
kb1 = qt(0.025, 9)
kb2 = qt(0.975, 9)
print(paste('P(k1 < X < k2 ) = 0.95 => k1 = ', kb1, ' ; k2 = ', kb2))

# c)
# el área total sin sombrear es de 0,99
# Por lo tanto que el area sombreada sea 0.01
kc1 = qt(0.495, 9)
kc2 = qt(0.505, 9)
print(paste('P(k1 < X < k2 ) = 0.01 => k1 = ', kc1, ' ; k2 = ', kc2))


# d)
# el área sombreada a la izquierda es de 0,01
kd = qt(0.01, 9)
print(paste('P( X < k ) = 0.01 => k = ', kd))

# e)
# el área a la izquierda de k es 0,90
ke = qt(0.9, 9)
print(paste('P( X < k ) = 0.9 => k = ', ke))
