A = zeros(2,2);
for m = 1:2
    for n = 1:2
        A(m, n) = 1/(m + n - 1);
        disp(A(m,n))
    end
end

t = 0:0.001:2 %linspace(-5,5,10000)
f = sin(t)
plot(t,f)
% polar(t,f)
% comet(log(t),f)
% plot(t, exp(t))

x = 0:.1:1
y = [x; exp(x)];
fid = fopen('exp.txt','w')
fprintf(fid,' %.3f -> %0.8f\n',y)
fclose(fid)
type exp.txt
type t17.10.2018.txt