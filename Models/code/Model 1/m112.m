m = 1235;
syms x;
f2 = x*sin((m*x)/(2*x^2 + 1));
lim2 = limit(f2, x, inf)