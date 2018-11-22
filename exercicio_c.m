disp("Valor Exato")

g(t)=VALOR_EXACTO(@(t,y) -0.02*y^2-0.9, 0, 300/3.6);
 
solve(g(t)==0, t)
S=vpasolve(g(t)==0, t)

disp("Valor Estimado")

N=1000000;
h=(12-0)/N;
[y, ~]=RK4(@(t,y) -0.02*y^2-0.9, 0, 300/3.6,12,N);
for i=1:N
    if y(i)<0.00001
        disp(i*h)
        break;
    end
end

Erro = abs(S-h*i)