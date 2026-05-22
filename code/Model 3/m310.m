clear; clc;
syms n
m = sym(1201); 


A = [m, m - 4; 
     6 - m, 10 - m];
x0 = [1; 2];


[V, D] = eig(A);
Dn = D^n; 
xn = V * Dn * (V \ x0);


xn = simplify(xn)
