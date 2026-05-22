m = 1235;
syms x;

f = exp(sin(m*x)) + exp(-sin(m*x));

% f2
f2 = diff(f, x, 2);
pretty(f2)


%f6
f6 = diff(f, x, 6);
result = subs(f6, x, 2*m*pi)
