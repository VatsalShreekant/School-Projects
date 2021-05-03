t = [-1:0.01:5];
t2 =[-2:0.01:10];

x1 = exp(-t).*1.0.*(t>=0);
x2 = 1.0.*(t>=0 & t<=1) - (1.0.*(t>1 & t<=2));

y = conv(x2, x1);

plot(t2, y);
axis
figure 

xw1 = fft(x1);
xw2 = fft(x2);

yw = xw1*xw2;

yt = ifft(yw);

plot(t, yt);
axis

plot(t, x1);
axis
figure

plot(t, x2);
axis
figure

