syms n

m = sym(1235);

A = [m, m - 4; 
     6 - m, 10 - m];
B = A / 10;
x0 = [1; 2];

xn = (B^n) * x0;

% 化简结果
xn = simplify(xn)