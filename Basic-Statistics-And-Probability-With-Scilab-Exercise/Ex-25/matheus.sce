function [F] = fatorial(N)
   F = 1;
   if N > 1 then
     for i = N : -1 : 1
       F = F * i;
     end
   end
endfunction

function [C] = combinacao (n, r)

  N = fatorial(n);
  R = fatorial(r);
  NR = fatorial(n - r);
  C = N / (R * NR);

endfunction

n = 18;

r = 4;

resultado = combinacao(n, r);

printf("A quantidade de combinações é:%d ", resultado);
