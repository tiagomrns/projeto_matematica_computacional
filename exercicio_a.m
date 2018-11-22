tfinal=1;
valorexato=0.5*exp(-10*tfinal);
M=10;
N=10;
for i=1:M
    [~,y]=RK4(@(t,y) -10*y, 0, 0.5, 1, N);
    N=2*N;
    Erro(i)=abs(valorexato-y);
end
x=1:M;
h=((1-0)/N)*(2.^(-x));
    
subplot(2,1,2);
loglog(h, Erro);
p=polyfit(log(h), log(Erro),1);
Declive=p(1)
Declive_Arredondado=round(Declive)
