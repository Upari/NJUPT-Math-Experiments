x = linspace(-3*pi/2, 3*pi/2, 1000);
y = sin(x);

% 泰勒展开各项公式
f1 = x;
f3 = x - x.^3/6;
f5 = x - x.^3/6 + x.^5/120;

% 绘图
figure(1);
plot(x, y, 'k', 'LineWidth', 2); hold on;
plot(x, f1, 'r--', 'LineWidth', 1.5);
plot(x, f3, 'g-.', 'LineWidth', 1.5);
plot(x, f5, 'b:', 'LineWidth', 1.5);
grid on; legend('sin(x)', 'n=1', 'n=3', 'n=5');
ylim([-5, 5]); xlabel('x'); ylabel('y');
title('n=1,3,5');