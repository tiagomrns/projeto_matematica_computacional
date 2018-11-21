function Todos(fun, to, yo, tfinal, N)

    t = linspace(to, tfinal, N); % os objetos tomam N posições homogeneamente distribuidas entre t0 e tfinal

    % obtenção das imagens correspondentes aos N objetos pelos vários métodos
    yEP = euler_progressivo(fun,to,yo,tfinal,N); %Euler Progressivo
    y3 = RK3(fun,to,yo,tfinal,N); %Runge-Kutta 3
    y4 = RK4(fun, to, yo, tfinal, N);   %Runge-Kutta 4
    y38 = RK38(fun, to, yo, tfinal, N); %Runge-Kutta 3/8
    y2 = RK2(fun, to, yo, tfinal, N); %Runge-Kutta 2

    disp("Imma plot this differencial bitch!")

    plot(...
        t,yEP,...
        t,y3,...
        t,y4,...
        t,y38,...
        t,y2)

    title('Grafico das Funcoes Aproximadas Pelos Varios Metodos')
    xlabel('abcissas')
    ylabel('ordenadas')

    %syms fun(t,y)
    %eqn = diff(y,t)==fun
    %cond = y(to) == yo
    %S(t) = dsolve(eqn, cond)
    %plot(S)

end
