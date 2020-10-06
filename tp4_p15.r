# Hallar los cuantiles de la función de densidad chisq(nu)
# para los cuales el área en la cola izquierda de la
# distribución sea 0,01 si el número de grados de libertad es:
#  a) 1
#  b) 8
#  c) 24
#  d) 60
#  e) 80
#  f) 100 

nus = c(1, 8, 24, 60, 80, 100)
for (i in nus) {
   ki = qchisq(0.01, i)
   print(paste('P( X < k ) = 0.01 con ', i,' grados de lib. => k = ', ki))
}
