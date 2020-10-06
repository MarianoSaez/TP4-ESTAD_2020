#  Hallar los cuantiles de la distribución
# 2 para los cuales el área en la cola derecha de la distribución
# sea 0,05 si el número de grados de libertad es:
#  a) 15
nua = 15
ka = qchisq(1-0.05, nua)
print(paste('P( X > k ) = 0.05 => k = ', ka))

#  b) 21
nub = 21
kb = qchisq(1-0.05, nub)
print(paste('P( X > k ) = 0.05 => k = ', kb))

#  c) 50 
nuc = 50
kc = qchisq(1-0.05, nuc)
print(paste('P( X > k ) = 0.05 => k = ', kc))
