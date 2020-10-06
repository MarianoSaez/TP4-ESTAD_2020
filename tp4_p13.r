# X ~ chisq( nu = 2 )

nu = 2

# Hallar los cuantiles de
# 2 para los que:
#  a) el área sombreada a la derecha es 0,025.
ka = qchisq(1-0.025, nu)
print(paste('P( X > k ) = 0.025 => k = ', ka))

#  b) el área total sombreada es 0,1.
prob_kb1 = 0.45
prob_kb2 = 0.55

kb1 = qchisq(prob_kb1, nu)
kb2 = qchisq(prob_kb2, nu)

print(paste('P( X < k1 ) = ', prob_kb1, ' => k1 = ', kb1))
print(paste('P( X < k2 ) = ', prob_kb2, ' => k2 = ', kb2))
#  c) el área derecha sombreada es de 0,01.
kb = qchisq(1-0.01, nu)
print(paste('P( X > k ) = 0.01 => k = ', kb))

#  d) el área sombreada a la izquierda es de 0,01. 
kc = qchisq(0.01, nu)
print(paste('P( X < k ) = 0.01 => k = ', kc))