m = 1235;
figure(1);
syms t;

fx = cos(t) + t * sin(t);
fy = sin(t) - t * cos(t);
fz = -t;

t = [-m/250, m/250];

fplot3(fx, fy, fz, t);

grid on;
xlabel('X'); ylabel('Y'); zlabel('Z');