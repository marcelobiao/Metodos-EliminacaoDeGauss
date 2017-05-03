clc;
%a=Matriz os coeficientes
a=[ 45   3  -14   1 -7   8;
    -3   2  -36   5  7  -1;
     4   4   13  -1  1  -2;
     5  -5   -6  18  2   1;
   -11   1   -4  23 -5  11;
   -25  16  -11   9  9 -15];
%b=Matriz resposta
b=[ 12;
    -2;
     0;
    -3;
    23;
   -12];
%Execucao
raizesGauss = eliminacaoDeGauss(a,b);
raizesLU = fatoracaoLU(a,b);

fprintf('Raizes Gauss:\n');
fprintf('%f\n',raizesGauss);
fprintf('Raizes LU:\n');
fprintf('%f\n',raizesLU);