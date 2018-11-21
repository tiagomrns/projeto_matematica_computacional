%   Metodo de Heun de terceira ordem (RK3) exercio a)
clear all
close all
N = 4;    % numero de intervalos
% np=n+1    % numero de intervalos


h = (tfinal-to)/N;    % defina o passo
for i=1:10

    y=RK3(fun, to, yo, tfinal, N)
    %for j=1: N
    %    k1 = -1*y(j)+sin(x(j));     % calcula fun��o f(x,y)
    %    %   preveja y a 1/3 do passo
    %    y13 = y(j) + h/3*k1;
    %    x13 = x(j) + h/3;
    %    k2 = -1*y13+sin(x13);     % calcula fun��o f(x,y) a 1/3 do passo
    %    y23 = y(j) + 2*h/3*k2;       % preveja com a regra do ponto medio
    %    x23 = x(j) + 2*h/3;
    %    %   calcular F3 = f(x2/3,y2/3)
    %    k3 = -1*y23+sin(x23);     % calcula fun��o f(x,y) a 2/3 do passo
    %    y(j+1) = y(j) + h/4*(k1 + 3*k3);  %  Regra de Gauss-Radau
    %    t = t + h;
    %    x(j+1) = t;
    %end
    solucao_exacta=3/2*exp(-x)+1/2*(sin(x)-cos(x));     %  solu��o exacta para comparar
    erro(i) = y(4*2.^(i-1))-solucao_exacta(tfinal);   % erro absoluto
%     plot(x,y,x,solucao_exacta)
    plot(x,y,x,solucao_exacta)
    N=N*2
    h=h/2;
end
