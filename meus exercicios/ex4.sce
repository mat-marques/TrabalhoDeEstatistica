//APOSTILA "RANDOM VARIABLES WITH SCILAB EXERCISE"
//ENUNCIADO: "If X is a discrete random variable that follows the Poisson distribution with parameter λ and P(X ≤ 10) = 0.80, determine the value of λ ."


//UTILIZAREMOS A FUNCAO "cdfpoi()" PARA O CALCULO DE DISTRIBUIÇÃO DE POISSON.
//PARA "cdfpoi()", VAMOS UTILIZAR O ARGUMENTO "Xlam", ficando "cdfpoi("Xlam",P,q,S)"

lambda = cdfpoi("Xlam",0.8,0.2,10)

//PARA CONFERIR O RESULTADO, CRIAMOS UM LACO DE REPETICAO QUE FAZ O SOMATORIO DA FORMULA DE POISSON. SABEMOS QUE ESSE SOMATORIO DEVE SER IGUAL A 0.8:

z = 0

for i=0:10,z = z + ((%e^-lambda*(lambda^i))/factorial(i));end;

//Z DEVE SER IGUAL A 0.8
