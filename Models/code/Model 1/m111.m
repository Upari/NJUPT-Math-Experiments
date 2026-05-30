m = 1235;
syms x;
f1 = (exp(m*x-sin(m*x))-1) / (x*(1-cos(x)));
lim1 = limit(f1, x, 0)