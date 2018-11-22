function Hx2(fun, to, yo, tfinal, N, M)
    syms g(t);
    g(t) = VALOR_EXACTO(fun, to, yo);
    for i=1:M
        [~,y]=RK4(fun, to, yo, tfinal, N);
        N=2*N;
        Erro(i)=abs(g(tfinal)-y);
    end
    x=1:M;
    h=(tfinal-to)*2.^(-x);
   	p=polyfit(log(h), log(Erro),1);
    subplot(2,1,2);
    loglog(h, Erro);
    p(2)=short(p(2))
    disp(p(2))
    p(2)=short(p(2))
end
