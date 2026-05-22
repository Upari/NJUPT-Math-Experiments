m = 1235; 

x = linspace(-2.5, 2.5, 100); 
y = linspace(-2.5, 2.5, 100);
[X, Y] = meshgrid(x, y);

Z = m .* X .* exp(-(X.^2 + Y.^2));

figure(1);
surf(X, Y, Z);

shading interp; 
xlabel('x');ylabel('y');zlabel('z');
