function [vetorimagens, yfinal] =RK4(fun, to, yo, tfinal, N)
    h=(tfinal-to)/N;
    tt=linspace(to, tfinal, N);
    yy(1)=yo;
    for i=1:N-1
        t=tt(i);
        y=yy(i);
        k_1 = h*fun(t,y);
        k_2 = h*fun(t+0.5*h, y+0.5*k_1);
        k_3 = h*fun(t+0.5*h, y+0.5*k_2);
        k_4 = h*fun(t+h, y+k_3);
        yy(i+1)=y+(k_1+2*k_2+2*k_3+k_4)/6;
    end
    
    subplot(2,1,1)
    plot(tt, yy)
    
    vetorimagens=yy;
    yfinal=yy(N);
end
