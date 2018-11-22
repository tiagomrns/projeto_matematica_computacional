function Varios_H(fun, to, yo, tfinal, N, M)
    syms g(t);
    W=(fun, to, yo, tfinal, N);
    Erro=zeros(M);
    for i=1:M
        y=RK4(W);
        N=2*N;
        g(t) = VALOR_EXACTO(W);
        Erro(i)=abs(g(tfinal)-y(N));
    end
    x=1:M
    plot(2x, Erro);
end
