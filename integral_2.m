%sfunction integral_2(fun, xmin, xmax, N)
%s    h = (xmax-xmin)/N
%s    x = xmin:h:xmax-h    
%s    T = h*(fun(x)+fun(x+h))/2;
%s    I = sum(T)
%send
function main
    fun=input(
end

function RK4(fun, to, yo, h)
    N=1000
    ty=zeros(N,2)
    t(1,1)=to
    y(1,2)=yo
    k=zeros(4)
    for i=1:N-1
        %KKK(fun, t, k, y(i))
        k(1) = h*fun(t,y)
        k(2) = h*fun(t+0.5*h, y+0.5*k(1))
        k(3) = h*fun(t+0.5*h, y+0.5*k(2))
        k(4) = h*fun(t+h, y+k(3))
        y(i+1)=y(i)+(k(1)+2k(2)+2k(3)+k(4))/6
    end
    plot(ty)
end

function KKK(fun, t, k, y)
    k(1) = h*fun(t,y)
    k(2) = h*fun(t+0.5*h, y+0.5*k(1))
    k(3) = h*fun(t+0.5*h, y+0.5*k(2))
    k(4) = h*fun(t+h, y+k(3))
end