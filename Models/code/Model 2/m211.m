m = 1235;
syms x;
f = (2*x + 1) / (x - m);

% 求不动点即解方程 f(x) = x
p = solve(f == x, x);

disp(p);