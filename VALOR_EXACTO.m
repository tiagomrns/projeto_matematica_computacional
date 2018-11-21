function g = VALOR_EXACTO(fun, to, yo, tfinal, N)

  syms g(t);
  eqn = diff(g,t) == fun(t,g);
  cond = g(to)==yo;
  g(t) = dsolve (eqn,cond);
  %disp(g(tfinal))
  %t=linspace(to, tfinal, N);
  %plot(t,g(t));
  %Erro(i) = F(t(N)) - y(t(N));

% Extended description
  %plot(t,S(t))
  %figure
  %plot(log(N),log(Erro))

end 

Erro=g(tfinal)-y(tfinal)