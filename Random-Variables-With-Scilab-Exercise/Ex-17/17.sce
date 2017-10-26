X = [0.5:3.5]
Y = [1:4]

fXY = [0.05,0.03,0.01,0.01;0.01,0.15,0.1,0.03;0.08,0.12,0.18,0.05;0.03,0.08,0.05,0.02]

//(a) Verify that the table indeed represents a bivariate probability mass function.

[n m] = size(fXY)

sumX = 0

for i = 1:n
    for j = 1:m
        sumX = sum(fXY(1:i,1:j));
    end;
end;

sumX

sumY = 0

for i = 1:m
    for j = 1:n
        sumY = sum(fXY(1:j,1:i));
    end;
end;

sumY

// Como o valor de sumX=1 e sumY=1 então essa tabela representa uma função massa de probabilidade

//(b) Plot the probability mass function f XY (x,y) as a three-dimensional histogram using function hist3d.

hist3d(fXY)

//(c) Produce tables of the marginal probability mass functions f X (x) and f Y (y).

fX = sum(fXY,'c')
fY = sum(fXY,'r')

//(d) Determine the mean value, variance, and standard deviation for X.

mediaX = X*fX
varX = (X-mediaX)^2*fX
dpX = sqrt(varX)

//(e) Determine the mean value, variance, and standard deviation for Y.

mediaY = Y*fY'
varY = (Y-mediaY)^2*fY'
dpY  = sqrt(varY)

//(f) Produce a table for the cumulative distribution function F XY (x,y), and plot this function using a three-dimensional histogram.

FXY = zeros(n,m);

for i = 1:n
    for j = 1:m
        FXY(i,j) = sum(fXY(1:i,1:j));
    end;
end;

FXY

hist3d(FXY)

//(g) Determine the covariance and correlation coefficient for variables X and Y.

// Covariância
CovXY = 0.0

for i = 1:n
    for j = 1:m
        CovXY = CovXY + (X(i)-mediaX) * (Y(j)-mediaY) * fXY(i,j);
    end;
end;

CovXY

// Coeficiente de Correlação
CorXY = CovXY/(dpX*dpY)
