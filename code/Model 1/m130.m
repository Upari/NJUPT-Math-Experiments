m1 = 1235;
m2 = 235;
syms x;

%test1
f1 = sin(log(m1 * x));
int1 = int(f1, x);
pretty(int1)

%test2
f2 = sqrt(1-cos(2*x));
int2 = int(f2, x, 0, m2*pi)