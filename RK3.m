function vetorimagens = RK3(fun,t0,yo,tfinal,N)
    %   Metodo de Heun de terceira ordem (RK3) exercio a)
    close all    % numero de intervalos
    % np=n+1    % numero de intervalos
    %  intervalo b-a
    h = (tfinal-t0)/N;    % defina o passo
    y(1) = yo;  % condi�ao inicial tem indice 1
    x(1) = t0;
    for i=1: N-1
        k1 = fun(x(i),y(i));     % calcula fun��o f(x,y)
        %   preveja y a 1/3 do passo
        y13 = y(i) + h/3*k1;
        x13 = x(i) + h/3;
        k2 = fun(x13,y13);     % calcula fun��o f(x,y) a 1/3 do passo
        y23 = y(i) + 2*h/3*k2;       % preveja com a regra do ponto medio
        x23 = x(i) + 2*h/3;
        %   calcular F3 = f(x2/3,y2/3)
        k3 =fun(x23,y23);     % calcula fun��o f(x,y) a 2/3 do passo
        y(i+1) = y(i) + h/4*(k1 + 3*k3);  %  Regra de Gauss-Radau
        x(i+1) = x(i) + h;
    end
    solucao_exacta=3/2*exp(-x)+1/2*(sin(x)-cos(x));     %  solu��o exacta para comparar
    erro = y-solucao_exacta;   % erro absoluto
%     plot(x,y,x,solucao_exacta)
   %plot(x,y,'r+',x,solucao_exacta)
   vetorimagens = y;
end
