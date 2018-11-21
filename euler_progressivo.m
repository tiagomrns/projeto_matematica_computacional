%   Metodo de Heun de terceira ordem (RK3) exercio a)
function vetorimagens = euler_progressivo(fun,to,yo,tf,N)    % numero de intervalos
    % np=n+1    % numero de intervalos
    %  intervalo b-a
    h = (tf-to)/N;    % defina o passo
    y(1) = yo;  % condi�ao inicial tem indice 1
    t(1) = to;
    for i=1: N-1
        y(i+1) = y(i)+h*fun(t(i),y(i));  %  Regra de Gauss-Radau
        t(i+1) = t(i)+h;
    end
    solucao_exacta=3/2*exp(-x)+1/2*(sin(x)-cos(x));     %  solu��o exacta para comparar
    erro = y-solucao_exacta;   % erro absoluto
    
    plot(x,y,x,solucao_exacta);
    vetorimagens = y;
end
