t = [-10:0.01:10];
n = [-100:1:100];
w = pi/4;

Fn = 0;

Dn = 0.25.*((sinc((n.*w)./2)).^2).*(cos(n.*w));

for a = 1:length(n)
    Fn = Fn + real(Dn(a).*exp(1i*n(a)*w*t)) ;
end

plot(t,Fn);
axis
figure


stem(t,abs(Fn));
axis
figure

stem(t,angle(Fn));
axis

