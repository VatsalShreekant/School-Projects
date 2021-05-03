x = -5:0.01:5;
y1 = @(x) (5*x) + 5;
y2 = @(x) power(x, 2);
plot(x, y1(x), x, y2(x));
title('Task 1');
xlabel('x');
ylabel('y');
legend('y1', 'y2');




