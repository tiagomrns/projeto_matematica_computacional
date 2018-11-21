function vetorimagens=RK4(fun, to, yo, tfinal, N)
    h=(tfinal-to)/N;
    tt=zeros(N);
    yy=zeros(N);
    tt(1)=to;
    yy(1)=yo;
    k=zeros(4);
    for i=1:N-1
        t=tt(i);
        y=yy(i);
        yy(i+1)=y+h*fun(t+0.5*h, y+0.5*h*fun(t,y));
        tt(i+1)=t+h;
    end
    %plot(tt, yy)
    vetorimagens=yy;
end 