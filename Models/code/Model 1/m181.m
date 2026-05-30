m = 1235;
figure(1);
syms t;

fx = (m/20) * cos(t);
fy = (m/20) * sin(t);
fz = t;

t = [-m/250, m/250];

fplot3(fx, fy, fz, t);

grid on;
xlabel('X'); ylabel('Y'); zlabel('Z');
