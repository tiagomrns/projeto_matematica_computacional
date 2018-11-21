function vetorimagens=RK38(fun, to, yo, tfinal, N)
    h=(tfinal-to)/N;
    tt=zeros(N);
    yy=zeros(N);
    tt(1)=to;
    yy(1)=yo;
    k=zeros(4);
    for i=1:N-1
        t=tt(i);
        y=yy(i);
        k(1) = h*fun(t,y);
        k(2) = h*fun(t+0.5*h, y+0.5*k(1));
        k(3) = h*fun(t+0.5*h, y+0.5*k(2));
        k(4) = h*fun(t+h, y+k(3));
        yy(i+1)=y+(k(1)+3*k(2)+3*k(3)+k(4))/8;
        tt(i+1)=t+h;
    end
    %plot(tt, yy)
    vetorimagens=yy;
end
