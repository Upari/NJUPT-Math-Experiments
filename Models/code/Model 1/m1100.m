m = 1235;

syms x y;

f = exp(m*x + y) - cos(x*y) - exp(1) + 1;

figure(1);
ezplot(f); 

grid on;
xlabel('x 轴');
ylabel('y 轴');