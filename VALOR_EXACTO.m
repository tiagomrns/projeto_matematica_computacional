function g = VALOR_EXACTO(fun, to, yo)

  syms g(t);
  eqn = diff(g,t) == fun(t,g);
  cond = g(to)==yo;
  g(t) = dsolve (eqn,cond);

end 

%Erro=g(tfinal)-y(tfinal)