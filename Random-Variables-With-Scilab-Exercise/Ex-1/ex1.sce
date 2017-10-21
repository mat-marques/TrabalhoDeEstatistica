clc;
//(a)
x = [0, 1, 2, 3, 4, 5];
fx = [0.06, 0.17, 0.22, 0.28, 0.17, 0.1];
S = sum(fx);
printf("Se os valores de 0 <= fx <= 1 e o somatorio de fx = 1. então fx é mass function.\n");
printf("Como os valores de 0 <= fx <= 1 e o somatorio de fx = %lf, então fx é mass function.\n", S);

//(b)
scf(0);
plot2d3('gnn', x, fx);

//(c)
Fx = [0.06, 0.23, 0.45, 0.73, 0.9, 1.0];
printf("Os valores da função acumulativa são:\n");
for i=1:1:6
    printf("%lf ", Fx(i:i));
end
scf(1);
plot2d3('gnn', x, Fx);

//(d)
printf("\n\n");
media = 0;
for i=1:1:6
    p = (x(i:i));
    q = (fx(i:i));
    media = media + (p * q);
end
printf("Média: %lf", media);
printf("\n\n");

var = 0;
for i=1:1:6
    p = (x(i:i));
    q = (fx(i:i));
    var = var + ((p^2) * q);
end
printf("Variança: %lf", var);
printf("\n\n");

desv = 0;
for i=1:1:6
    p = (x(i:i));
    q = (fx(i:i));
    desv = desv + sqrt(p * q);
end
printf("Desvio padrão: %lf", desv);
printf("\n\n");

//(e)
momento3 = 0;
momento4 = 0;
for i=1:1:6
    p = (x(i:i));
    q = (fx(i:i));
    momento3 = momento3 + (q*(p - media)^3);
    momento4 = momento4 + (q*(p - media)^4);
end
skewness = momento3 / desv^3;
kurtosis = (momento4 / desv^4) + (-3);
printf("skewness: %lf\n", skewness);
printf("kurtosis: %lf", kurtosis);
printf("\n\n");


//(f)
function [func] = funcao(value)
    func = ((value^2) + value);
endfunction

printf("Os valores da função gx são:\n");
for i=1:1:6
    printf("%lf ", funcao(x(i:i)));
end

