function Hx2(fun, to, yo, tfinal, N, M)
    syms g(t);
    Erro=zeros(M);
    g(t) = VALOR_EXACTO(fun, to, yo);
    for i=1:M
        [~,y]=RK4(fun, to, yo, tfinal, N);
        N=2*N;
        Erro(i)=abs(g(tfinal)-y);
    end
    x=1:M;
    h=(tfinal-to)*x.^(-2);
    figure(2)
    loglog(h, Erro);
end