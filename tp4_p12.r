# X ~ chisq( nu = 5 )

nu = 5
plot(seq(0, 25, 0.001), dchisq(seq(0, 25, 0.001), 5), type='l')
abline(v=nu)

# Hallar los valores de los cuantiles
# 2 para los que:
#  a) el área sombreada a la derecha es 0,05
# 
ka = qchisq(1 - 0.05, 5)
print(paste('P( X > k ) = 0.05 => k = ', ka))


#  b) el área total sombreada es 0,05
# Suponiendo alrededor de la media
prob_kb1 = -0.025 + pchisq(5, nu)
prob_kb2 = 0.025 + pchisq(5, nu)

kb1 = qchisq(prob_kb1, nu)
kb2 = qchisq(prob_kb2, nu)

print(paste('P( X < k1 ) = ', prob_kb1, ' => k1 = ', kb1))
print(paste('P( X < k2 ) = ', prob_kb2, ' => k2 = ', kb2))

#  c) el área derecha sombreada es 0,01
kc = qchisq(1-0.01, nu)
print(paste('P( X > k ) = 0.01 => k = ', kc))

#  d) el área sombreada a la izquierda es 0,01 
kd = qchisq(0.01, nu)
print(paste('P( X < k ) = 0.01 => k = ', kd))
