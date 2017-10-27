// n1, n2, n3 e n4 são as variáveis referentes às frequências dadas no exercício
n1 = 10
n2 = 120
n3 = 80
n4 = 30
// n é a soma das frequências
n = n1+n2+n3+n4

// (a)
// pn1 é a probabilidade P(A1)
pn1 = n1/n
pn1

// (b)
// pn1_u_pn3 é a probabilidade P(A1 ∪ A3)
// pn1_i_pn3 é a probabilidade P(A1 ∩ A3)
// pn3 é a probabilidade P(A3)
// O cálculo do valor de P(A1 ∪ A3) é feito por P(A1) + P(A3) - P(A1 ∩ A3)
pn3 = n3/n
pn1_i_pn3 = pn1*pn3
pn1_u_pn3 = pn1 + pn3 - pn1_i_pn3
pn1_u_pn3

// (c)
// Como o valor de P(A1 ∩ A3) já foi calculado, apenas apresentamos o valor através dá variável pn1_i_pn3
pn1_i_pn3

// (d)
// O cálculo do valor de P(A1^c) é feito por 1 - P(A1), ou seja, é o complementar de P(A1)
// pn1_c é a probabilidade P(A1^c)
pn1_c = 1 - pn1
pn1_c
