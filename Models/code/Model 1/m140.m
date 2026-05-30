m = 1235;
syms x;

f = sin(m*x) - log(1 - m*x);

tl = taylor(f, x, 0, 'Order', 5);

pretty(tl)