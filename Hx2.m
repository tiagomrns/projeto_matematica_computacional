function Hx2(fun, to, yo, tfinal, N, M)
    syms g(t);
    g(t) = VALOR_EXACTO(fun, to, yo);
    for i=1:M
        [~,y]=RK4(fun, to, yo, tfinal, N);
        N=2*N;
        Erro(i)=abs(g(tfinal)-y);
    end
    x=1:M;
    h=((tfinal-to)/N)*(2.^(-x));
    
  
    subplot(2,1,2);
    %plot(h, Erro)
    loglog(h, Erro);
    
    p=polyfit(log(h), log(Erro),1);
    Declive=p(1)
    Declive_Arredondado=round(Declive)
end
